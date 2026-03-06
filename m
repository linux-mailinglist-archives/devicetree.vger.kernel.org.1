Return-Path: <devicetree+bounces-271919-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qJc9HnSaqmmbUQEAu9opvQ
	(envelope-from <devicetree+bounces-271919-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:12:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E7FBA21DABC
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 10:12:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 88AC53053BD8
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 09:11:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 205FE33D4FE;
	Fri,  6 Mar 2026 09:11:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LpeI+n/p";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ngi/er8y"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC88533B6F1
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 09:11:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772788264; cv=none; b=h/2x9Wa/G/M7r5fw6we9CvxVD9i2YSYVCY5gpVE7XsbpqJPI0OBQiZBNS/b2no6gWTwnS18ivcy/YGshfJTtrl3j9o9X7qPH9+vaNLXM447VPyeeihV3WZ76NX43aVNJMr5mL54DWQdLfSsm+nD09OnZVqqHnhPlP0BA7vVV3L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772788264; c=relaxed/simple;
	bh=Yk8SUA+V67eQSwhV75yXkd1h4PLQ/hQF0OPWFK4MC84=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WHwi4KOgaGbOgxNKig301dckGN+tgFnkm0p8kmNdqMrm+t+q/mQ6FJ5aqb4AKYWFSqphKsiDfUQC/Vt7vX9EIyAKGGuvoI2TLAdUjCRYOKSS0eOW4IyN8cIgqnqyQUuF79AWNWOwYr5089VcT7qWNpXHneIU5NoWqfF19uSvGwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LpeI+n/p; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ngi/er8y; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6264aj2w2328058
	for <devicetree@vger.kernel.org>; Fri, 6 Mar 2026 09:11:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zJt+sEk9Ph+RtMedPWdMfyZ46IJhMQBZLTxr25P/jBc=; b=LpeI+n/p6rkTn8Xu
	JwdP0/vEh59I3Gr+D8YaNdXYw/cS9N1TMdUIApvbCg0Ps6jvitn5IwyvQFum8rd1
	sHkrvHvo6WMWiBe8mCsPvpxlXwfkOAk8Vv6/aoR33StvdTyrsXPP0eWMSegzTDeW
	YkZTzRjSKvU8sqLm0ZRGkWz+fU5bfJa4jfrlkiDErlqOERU0umX55fKdAXtUj0N3
	lVGc2uD7eZUAlo3LgzfFCO6UQRoY9FyiBiLQGtODmvKjGVrF8b+kwja9abOAolmH
	AJz9CjEWHLGUAG0jjtYLX1hkFYY3apkJFjHgnknbmMmqJo6IIp/LbVcfg6h5DIGo
	c5wjWA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cqg09tdy5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 09:11:02 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-89a04e9d4faso23803446d6.1
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 01:11:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772788261; x=1773393061; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zJt+sEk9Ph+RtMedPWdMfyZ46IJhMQBZLTxr25P/jBc=;
        b=Ngi/er8yvgCVHE6rtMcf/eaF8GH3jZvke6VYi7vB0On+2jb7JiynTOCjWd/R5/LgFg
         OYDdg0Fz8dQvxmTzP7kAlX0MgWQZFWlQd/jQtGgfTumQkQvtYj3AoIfGEwOaxhd95D74
         qgSMZT44+MsE9F5vTT2KSAf1MtVU3nikqPiznVDU+AI+mlv4saBQhnfcpDrk086pPk6h
         6Js7EEl2UuvY7fXjCBrWVQnBSZf2fGFCCU72pBHITtOzHgFsTkmfA34T1jUUzvT9vFHs
         psRkV33A4F4zvh2hC71fO879QYbJRvzpOk842EOPtLuvdiaHt08j7gJC1E1Xj7LXUF2L
         pt2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772788261; x=1773393061;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zJt+sEk9Ph+RtMedPWdMfyZ46IJhMQBZLTxr25P/jBc=;
        b=jADhJFUQlH8A9zbHbx9KnlTSx/uvQsgQ+J9qojcFGQ+JdlUzi3yJwteRSo61fcD7eq
         5B8/sbF1UwJzH3554zBndtGnjwSdrEBEu1MgEqFDTrs5y/WXzqtnxke5Ao2B+4qqEGCY
         mIEo3IQBgUtzqyoMof6LXnXkdVkpHpyNyhF3qp9u23xsLk+24ZEQEEKqy9KHSwTmHheC
         6IJsWGH9rMlLMzToYn/ioXXDE6aZ47ZFk5HMR5bk4E1Z6OFisxf8/TmwAkfns3snNXYO
         nlQL85h/XblbkI00zvG35SuLP2AlTV0wNDrV4liYM4bV+jj8P8PUpJsbF8YkiAr4eZOt
         /SJQ==
X-Forwarded-Encrypted: i=1; AJvYcCX0Hsla6RvdOIfdmPkjiubhYAoxTTAess6bU40RaXHOKZn0klRJsNdknbPwM9PP5qI9MNschWs8kgXG@vger.kernel.org
X-Gm-Message-State: AOJu0Yxhw352156+WpcXln3E1vYAky+r/OOFkGoR9BRdviQ28HCPIyBs
	RPu40ULVTndN3WERFxN60mvfTkmk39fS7xKAIUS+7OKaclKS+WwFT+WXDx8VE0w8fcMbIrgisNl
	PknD5W5eNYxoYwAchjrt8Fll94rcPKKp2kBVagK5wUyXjIw67Zu+twGRjBI616zvB
X-Gm-Gg: ATEYQzx1i9tTVoT1Ch+tqLkQZDU8pOBeLBE3gr7WbXVdPYl7F/skCDiCtdhrdOqvcX4
	cXq0heoI7YfmX+OAZLyFbShsALzWvUkAIQ1l55SyLXfHu9y9hOWc3fY4uHy9loxzYuU6YjVm1gt
	If60i9/57V4H4mcgbI9cc6xXvc+6E9lqFkr/WmypzZ64Av1jwvQ41lqDTFX0d3CyYjQg64d+URB
	Oi7hh69hdPuxdH4UO1Lq30/aeEDdCxNbpiZhHAokSC08TZNIph3WjFo3TVgz6R28et8+XR53PnA
	jwb3+5xdgy28kVFtOzrGVfm/vAyYCG8p7X5XWW7FrBbLD5WloUZuvJDdAgSRpSlD3PmDbYyC0rJ
	wAYTx8dov4MwUjgWoaLZyZPfGyT12PaGl6SDI9osTPl4I81qQjKLw56fdp1lCBJsMKuXfSSarN9
	9xvYk=
X-Received: by 2002:a05:620a:468a:b0:8cb:1d7a:3f33 with SMTP id af79cd13be357-8cd6d371619mr128111885a.4.1772788261029;
        Fri, 06 Mar 2026 01:11:01 -0800 (PST)
X-Received: by 2002:a05:620a:468a:b0:8cb:1d7a:3f33 with SMTP id af79cd13be357-8cd6d371619mr128109685a.4.1772788260566;
        Fri, 06 Mar 2026 01:11:00 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942f18bb33sm39509366b.65.2026.03.06.01.10.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Mar 2026 01:10:59 -0800 (PST)
Message-ID: <a1622ab4-d656-4015-9cda-4cee7f3044b2@oss.qualcomm.com>
Date: Fri, 6 Mar 2026 10:10:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: nvmem: qfprom: Add Kaanapali compatible
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260305-knp-qfprom-binding-v1-1-1b3effb09cad@oss.qualcomm.com>
 <dd14f8dd-254d-42a8-944d-f667153bea12@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <dd14f8dd-254d-42a8-944d-f667153bea12@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: oAdBrITJDX16Oz-3n3dNnIVeHg40iA_o
X-Authority-Analysis: v=2.4 cv=b/u/I9Gx c=1 sm=1 tr=0 ts=69aa9a26 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=YMgV9FUhrdKAYTUUvYB2:22
 a=EUspDBNiAAAA:8 a=S330QWMK7FQG4XRmxJIA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: oAdBrITJDX16Oz-3n3dNnIVeHg40iA_o
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA2MDA4NiBTYWx0ZWRfX/qLVWAMExVIG
 EzGZm1Lcs88WIxW+n5yLKleZdNnqgWNm2wpCGt0yR4zN6ZUR/2HLKQZ2lW+2lt4BjB//5UWXMFM
 bTqUhxoM7N5Y6e3tCUf57l9LBgIdNCvuGmg4rdbdCrJZxTtCbjAPoJ62Fkxs+MxiKv5xaXVT1KQ
 /PiIrZSS6eThf8mlMIDSF1+4zVj1U3Uceh0cG6I9CcY/pBusUKzbFNnDtiBjNrXlQE4OO1PKmX7
 FwxV+WS7r+VLtvN6RHuCsTmjHOsJnPetLvTgMrJLuXRNuRr1DJDnk+W68F1Ou2w9MPucDj4TWBa
 JGXN29cxaNOUfkGvauLGW+jY5v108e0xJbfjsX7YgrQefB5VuAiLXAjhAH7lefNS4kq//4PQfAh
 yZZ9fdd8zlowGYkGGUIReE1zYOmP88IyGaYLhdgDhMUSo3FkDPwFB2LaxqhrQTCSF4XbBAe49xx
 baFmNrDy5fkBxrLkcVg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-06_03,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 bulkscore=0
 adultscore=0 clxscore=1015 phishscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603060086
X-Rspamd-Queue-Id: E7FBA21DABC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-271919-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/6/26 7:55 AM, Akhil P Oommen wrote:
> On 3/6/2026 12:10 PM, Jingyi Wang wrote:
>> Document compatible string for the QFPROM on Kaanapali platform.
>>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
>> index 839513d4b499..2ab047f2bb69 100644
>> --- a/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
>> +++ b/Documentation/devicetree/bindings/nvmem/qcom,qfprom.yaml
>> @@ -26,6 +26,7 @@ properties:
>>            - qcom,ipq8064-qfprom
>>            - qcom,ipq8074-qfprom
>>            - qcom,ipq9574-qfprom
>> +          - qcom,kaanapali-qfprom
> 
> A question to the maintainers.
> 
> Do we need a new compatible for every chipset? If there are no KMD
> facing differences in the HW, can we use an existing compatible string,
> like sm8750's in this case?
> 
> The fuse definitions (which map to nvmem cells) will obviously differ
> between chipsets, but I am not sure if this alone warrants introducing a
> new compatible string.

This is to prevent the case where it later turns out that QFPROM on 8750
is deeply flawed under certain conditions and needs to have workarounds
applied retroactively (because we're pinky-promise working towards stable
DT ABI)

Konrad

