Return-Path: <devicetree+bounces-261150-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8JGJJmSGfGmbNgIAu9opvQ
	(envelope-from <devicetree+bounces-261150-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:22:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C26B94C4
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:22:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 054673012EAE
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:22:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BEFC935DCED;
	Fri, 30 Jan 2026 10:22:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lIHdHt0u";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="P5I3qjNh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68E2E35C193
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:22:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769768536; cv=none; b=SCg7lbX01elyrzzmq0i+VV4gamQWhbOXISErlacpifF/EIJP4QQ/emPjXCHpVCoBArVyZIiwyPjsTu+vhL/naNPOxm3yEInmmkPD6QlF2S1Vz2LQbpiFHiYpXCfyyTHJDTdEvmQWOYBavkHuT3VnSmF6NxR3YNkh34khb+ZsCSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769768536; c=relaxed/simple;
	bh=ztPKY6XHM3k4XQpFpIWxSk64jJzvQPmSjuIlXhvrPdk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=W4gXOtH/XMmlC9RkcmKbLp/NlAUVRY6DspUsb0PYiARal0enbbAnTHLYADwaYIYQxt3hwZZERJSy0/m6Y5LRNeIJyWQdAlwDXAOEMnKf1DzSZLZNCLPh5WG9kMmIbRyKscRZaqubShp5Py+XbhOOJRFzEhyY0rf99FyCGF/AcA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lIHdHt0u; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=P5I3qjNh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60UAAQae995890
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:22:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IhwTqwGQwCpOE8eWbIm7gM76YBPrk4H8irWBzrqY4UY=; b=lIHdHt0uJdrM80OB
	b1TJkjQbFhYQebFv3zSrp6+FshK11m0WtJEmvnwHnBKCX5+1+qFyk/Cn66vShW8d
	NTa7NoeATPjE6b4wwOaAFBudpypWMAEFV9f/hP5tl5v8JLIjoIXF2bVqK2MHOFWt
	aviH1J9r9P2Bo8R0D1qvDyKr/yRaapMat6AXsTkoDvtlvmhUwKXbk4nxbYdmpvnG
	/3NbKu9nkzCQhHSbpzQXqv8OS34nRE4uBg3PmRKYfqSwLY3MgAlanortAzb7Ol3k
	A9tXj2/lYSulAc1DN+44xqAaAHmPefAfmcPH59XHIIJ7yzU0z0YeWD82PN03qh6p
	LIQXFQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0bvvjqsh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:22:13 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c6de73fab8so16086685a.3
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 02:22:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769768533; x=1770373333; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IhwTqwGQwCpOE8eWbIm7gM76YBPrk4H8irWBzrqY4UY=;
        b=P5I3qjNhe/RY4q0Pco5mk1FL3Rx5hgWBRO6wb1WaXPN21PTsrk6RpZXtUUjbedrsCo
         rwI1CrH6aLoS1nUSglCRo/buNE+mSKDvHclkdk3ITBBbgJ+Yc5ATwpu+5/h3206Y1CSz
         Y6jeCOxlgtMT5GyvjKHeXHYMJF0YPZJmtCenstPShHDiPO4y1ttQzSfZidEErRiGm4pK
         9geKTjtT7Zw/YrDrNZiugKOaQvGpBQkAX3PCyDxJdzF/claJkDeBdda7jWLEbxT+akPE
         aZIZDl5lbKHI1xmbCUiwR/vluI67RMWDQvHGwpTdnxrH14dmzlkgraFhOh9kNUktPOix
         OlPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769768533; x=1770373333;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=IhwTqwGQwCpOE8eWbIm7gM76YBPrk4H8irWBzrqY4UY=;
        b=s6TbJGdU+US0kwlKhTTseCgizbiucIgIDY0jGsUvxlp1JUKH2hdS7+UnDK9qPqgzWQ
         zL3K654cw36Da/nR+d/KAV/txvTzk3mb+Ges4ePy4sS1WJ9GXXej/cdtfXJJ99Qd9rsd
         WzgldDQtq4mRvTQnheXeqPpLiNXQRLGsaMqOiSo6+aR4h8k1ZZFiPfiTw8dY8IDTpV7U
         EhnP6iFjrtNDPxzREaICuxqppEHI9P+dwOBhf4J1vDholbKN01/XCryE8zA4lQzi3OwH
         OkxkPv/aNtajWuU9l1NHy7PWD5GZiLP70gdOA6+jSJM5n7yJ0ZNJM4Gyps7LKfUhQ1OF
         WCmA==
X-Forwarded-Encrypted: i=1; AJvYcCVSbl5b0lO5BUNf7BOy/9KLPEz8j2CCUyKqMBqghe71rN56ADKzJO30uVR6Q57q7o+o+PZLGqkyCO4G@vger.kernel.org
X-Gm-Message-State: AOJu0YxsKR6kKUtUdSRa4nkD+Q7uHMbzPMwiTCOVl5+qeu3K8W0Kwfdw
	3PQjSSpoWBeBWkhdvTPgzG0rjE8bbDkNX4gc2IE0LKXzCkVJ3zOg7+Fznjnsw2EO/zfOdG8N4U7
	fXuNwrtuMiMhO8AQ3rUcE0nmzsG6b1OUhjFlEaWFxF26eFOuuCFX3mj5CJIXnK8UT
X-Gm-Gg: AZuq6aK/BK6cCSlDlPokUahFruKljyinUpbS+JG5VUg9X465y7eTghChdfnDf8lrOGh
	ySuNAo4MGoTMjoys18iMoEs5MWfSqiApiCBnXhKNDjqSSLU8L6lxc26ifBolvsdhb6FXBOsuDBG
	+10NnXruSrhCanLDFwQk8+O4/rrBq2fmGdCps5Wj9cDCbrJDwSjKrCy4i1QfeEMp4iwuVN1jIYu
	IgJaHgvGhbBXN2o7uciPD2X0ya+c2e1/buBDxBoknwWLUfECITkn10PtIVs4YxUlidJWPipHGWs
	dWlRM4XQoDNbxfVizlQvZ8DbVMwtwK5y7WFdt8LGjnWo5+v9BtkzWLT5EuufOyCOiYQd9gvhUVj
	7gtMtUljNmyi3idzQWindlCKra0zqX505JqYuToAH4cKB/anKBHXEugaJSAIRoN+9/Tg=
X-Received: by 2002:a05:620a:2550:b0:8c5:2ce6:dd4 with SMTP id af79cd13be357-8c9eb265908mr236753685a.2.1769768532791;
        Fri, 30 Jan 2026 02:22:12 -0800 (PST)
X-Received: by 2002:a05:620a:2550:b0:8c5:2ce6:dd4 with SMTP id af79cd13be357-8c9eb265908mr236752085a.2.1769768532365;
        Fri, 30 Jan 2026 02:22:12 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b42569c7sm3750765a12.4.2026.01.30.02.22.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 02:22:11 -0800 (PST)
Message-ID: <473298b7-2b96-4ede-99f0-2fd5407ce1d1@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 11:22:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 4/6] arm64: dts: qcom: ipq5018: add nodes to bring up
 q6
To: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
        quic_mmanikan@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc: George Moussalem <george.moussalem@outlook.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260113092021.1887980-1-varadarajan.narayanan@oss.qualcomm.com>
 <20260113092021.1887980-5-varadarajan.narayanan@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260113092021.1887980-5-varadarajan.narayanan@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZdEQ98VA c=1 sm=1 tr=0 ts=697c8655 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8
 a=U3Ut5sJg-URQ3oAxDygA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: chh9fpi9TtBe9VrjCkZGBCEo69D44YWu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDA4MyBTYWx0ZWRfX0lGKrS6izD1Q
 kwJjgzjY3ryQkpSpo/7uHEwbAFF5gkXqcKCYerokcUuCb19okCF0yMfH9ck0FsQ4ZDX9IVOWA4i
 +eFjvu5Pm/fQiFX+V1eGxJMOYt5n1H9h5wAoxkCjHCAttqrm17djF4BLyGH7/f1LkGOiUdVdHq0
 KjGniNd7PQIS3NDheftYFSfX89FckgIaGJ1PqKtjvYlubSXZDcXgso44U4BU7SUQUola99cvuSs
 EFapCZl1w5qW0XYTp/J5PtsVGV3HZJfkJb252QMDVHWeRMpeHtsLvWMA4khaj7oMvEttyMpqgcc
 ibcUxpMhOHziVBJfM5apopy9OVpk/gOurACNd18yigXHSieNwwsdpuMgGCcfpLLbJyfybGzZDWJ
 LYWevOKeV6lRRjIkDtNijHuVi2PZoEmv6fJZh2SawrmRUfzs73229i2bWG9jzEsAOJ8ltkht2m7
 jeYt9F2A1C6B6ipLRVA==
X-Proofpoint-ORIG-GUID: chh9fpi9TtBe9VrjCkZGBCEo69D44YWu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_01,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 phishscore=0 spamscore=0 suspectscore=0
 malwarescore=0 bulkscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601300083
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[outlook.com,oss.qualcomm.com];
	TAGGED_FROM(0.00)[bounces-261150-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,outlook.com:email,qualcomm.com:email,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 38C26B94C4
X-Rspamd-Action: no action

On 1/13/26 10:20 AM, Varadarajan Narayanan wrote:
> From: George Moussalem <george.moussalem@outlook.com>
> 
> Enable nodes required for q6 remoteproc bring up.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> [ Change 'qcom,smem-state-names' order to resolve dt-bindings-check error ]
> Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> ---
> v8: Swap the order of the items in 'qcom,smem-state-names" to resolve dt-bindings-check error
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad


