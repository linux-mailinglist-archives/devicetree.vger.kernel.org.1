Return-Path: <devicetree+bounces-266046-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKoULS01lGlAAgIAu9opvQ
	(envelope-from <devicetree+bounces-266046-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:30:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 29EA314A676
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:30:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C857E3025A47
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 09:30:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48BDB30BB88;
	Tue, 17 Feb 2026 09:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b8SqrQvo";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KeYgjxzK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2198430AD1D
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771320616; cv=none; b=k7LUDHxbDkZ/JlMMTd3L7DZUTDUsOLUnLcNbUFjNgVchAxE9KPtxlQBHtg3F7SppFlCKTUeJ6Gd7cuK6RmQFzL/9drTqtWcwhTxGNezyIX8GsQekD29/WAU4rHbTVfBq0cBzMJT6Y8rXw5BWM4CQNiG8rz/33ZbR+E1937uyHw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771320616; c=relaxed/simple;
	bh=skV8kT+3vjc4iwJtHVMjMX2HnTBCJoSr3evL57N/Wh4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UDeInR1Oq4Z5CaYXGqF6sCJ83Ec4EoBuoSdCSXthl6g7Y44ku9crM90TCi/AyKZ3JhQVBj9HShunb5byUvC//vUZ11XARnumM8YjSaTKnfkiBX62iMwhUIHBIcwrIpH7vAJcxSMeRcZ7XLRWaoxd+zfjgGS+GVn5bxnSHGxxICw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b8SqrQvo; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KeYgjxzK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H1lhLU1441859
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:30:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gjowmJEACZ4xRadd4NQnWlKmWRqtaHYf9/5saO/OcHM=; b=b8SqrQvoYO8x3QNq
	FSvsUnctG4ytsN4xTokHn0KuVAp9qYcakVVTvkQWtF4FIQmcuJ10BnL2ayHjwn5M
	Ury8y1MGmWO6PwnHM0Roi60D0L4ja268iqAUZAoVp5PsRWU8X6Y3Fvwo7fig7s94
	LnadpKGPxND4FSK4bPzxD/CmythYLgyNsvMXZAvZrpeEoXG8sACp2gvCTCBuy9dr
	JTnTUXMWDBHwSG2/WHO3DWPjut95rDEPpJn+pcWRziiSL+GBpZQZboUYNbLAtj9M
	phVCrx5dFiu+0ntgThjyznFiG2GjzUX+crUSZgjXw7R6v41TTlAMSFzoKYsa+hYj
	+NQt/A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6a9std0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 09:30:14 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c70cb31bcdso295646585a.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 01:30:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771320613; x=1771925413; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gjowmJEACZ4xRadd4NQnWlKmWRqtaHYf9/5saO/OcHM=;
        b=KeYgjxzKgwePmd+L7ZKn6nJvPipZctghvUzrP+z/dxBp1j5LdmWFXxEQCTNH7GFsXm
         kaxYbFU331UdzIGQ9HO27BacSvQ18iaHjHBJoP8YjL4hwNz0Nq93QQYV84B+QiW5ZZB4
         Xkcy72vVUZpp5u/SRt5X++TrjoaI6hjZk4QFzv/v8o9/rJSXzv9nMjNyhcn0O+0vK2Dk
         kqbfR2VxD7oXEueiDmscy3CSYWygNu8aB2YWQEYPU7qXI3nAmaOPp7qaEgW9BGmgaEFI
         aGTfkHgI+gvOuErrlbgW32fbPsHf7oUugp454AAyqsfUq+TD5TwpNd+YIfZPtGMzIhH8
         SP3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771320613; x=1771925413;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gjowmJEACZ4xRadd4NQnWlKmWRqtaHYf9/5saO/OcHM=;
        b=riFrFaK7YJTK9w2Qp+BXHGZ/2ynid4//LJNj9nR7IrpBwXzO5opMx+f7/LTd9OUqhn
         eYBoJYCse57ouHIQGEWCq5zH/dOWCx8rIau6UaseTzW3euJbNl6H4WbjsLHBlCdsLZPu
         yjG2wjlHDIi2YpUwOGDaBcrUvKowpAsZ1Swvx2Kxh62978P3h23Y2BtgcjLoVRGuphbI
         r4BJtPztgU+3LrfAYtvSXE+Hr/UM7eNtDHLQwsQkTdIFGRDiXXyGY+0rXwwtyYPp2BPW
         pTZ4aEyN8GiscPE/mTxi6EH4aA5EiQPYE7BC9v01wy21kSdVVNWLpCF4oRFnnhExHMFm
         9JtA==
X-Forwarded-Encrypted: i=1; AJvYcCUNfJIIlEIna6k0fVo/3vKe1IAx/InRodWTWRdrdUVh9WmJj/IsZnGUm3i+lMYNFcO3QHl5zQMF/Vl5@vger.kernel.org
X-Gm-Message-State: AOJu0YyAH2hbJ4Hhoz917dazMtvptPxDvBXO79wkseFWKT5AJUHdvGeR
	z6WsW7b4gUf39Q4OyUlN7uV8joGviO1Z1izg2qpfZMi1RU96N/Xw+7jHpNhHWC2+D3TiYM8qRQ9
	DdQkiugHoPW43MX/U4w8/tjaGdgXSe3XfVYCr5bC5UGF8LniCkq72tIWAqQbz3PGL
X-Gm-Gg: AZuq6aL64+8xQQ9zdlE/N/vlEbsKgYDrdVYVrZSymGR6+Zlzoa4sf/HSiEP7yXZTwMD
	eN/oDv+eCwR5knjxrKye2NevLtntMp1M1B+G0qpjFhav6PHegOZcYP5SvD3uOLj5XIFI5i2yw88
	4JoA8d0MIJ01q+fJJQKf7tt/bApa0ZWPiEwWgSX2R06IdtVlHaaWtgu0kUf66zQTRRhcfqqVWRO
	vls/SCJg++vvPMcroKYcLw75sJMu4qU4AcwoaAaYEFWvnacotz9qX5y8rrRUED67nJ2H/8b97nv
	x7BYWEtxFyihMrd0rAN6zMZZz9QGwlzv4i9PzT9lGwp3z+2EUYQtzzVMl52dueqzT0GGKGtFGA2
	3FVCs/mLmaHzo25w5FX5ocm29Wwxn3LPSdQl+mfcITsua/SNFIP4kRvSg934y9/TclBNbnYJ+DN
	A8xvw=
X-Received: by 2002:a05:620a:468b:b0:8c0:c999:df5a with SMTP id af79cd13be357-8cb408c8f1emr1310199785a.6.1771320613635;
        Tue, 17 Feb 2026 01:30:13 -0800 (PST)
X-Received: by 2002:a05:620a:468b:b0:8c0:c999:df5a with SMTP id af79cd13be357-8cb408c8f1emr1310196485a.6.1771320613151;
        Tue, 17 Feb 2026 01:30:13 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8fc7385e60sm332576966b.19.2026.02.17.01.30.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Feb 2026 01:30:12 -0800 (PST)
Message-ID: <edd3076c-c1e0-4b01-8039-5f01c6d0a019@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 10:30:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: sdm670-google: add common device
 tree include
To: Richard Acayan <mailingradian@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
Cc: yifei@zhan.science
References: <20260217000854.131242-1-mailingradian@gmail.com>
 <20260217000854.131242-6-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260217000854.131242-6-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDA3OCBTYWx0ZWRfXxMVNdLb2YHEq
 FonR5n1v/rAoFn7i06av0vuWIyoR2EtYSukLQFnLW+x3hk2BJ32KtMDzrEzDH25nRdB17Z1rXpD
 rKImRXVbnBhNSfR/WVy0Kk9BixHxrKGc+8+5f/Kmcs4vRvOEw1t+xZVya52TpCUMkWetZFiN9mR
 qlmZo0z3A6hfsd4SPTUDLvV5BF0TgYv27nKX4mhx54BdIp2scvXlUjVcL2zDR2uXTln7RgVjnmi
 7C5GA+evzRhWssx3zB6GCXfPlXJAc53bbHFIUEAk494Dc3cDKizAGSo4Jv2gv4KyZhUklykxRfZ
 H+pdJPTHlrRdbIkJv+vbs7XpZ1qogeMWZFh6UIMsmGJq+EBLktI4Xb/Y0XHmllcqt0f4Xdt2+0c
 hjEl/vdPVwx/qLUhYJuewKK1jZR1jpdjau7ZUMT7lCeljhxov2Qlzg9kIMmww1N6tbkUIXGCZNG
 Cm4HqTeqb+bv76gpzfQ==
X-Proofpoint-GUID: 8CFCitwLE2HC96CO9Oow20ydLwLdCQdF
X-Proofpoint-ORIG-GUID: 8CFCitwLE2HC96CO9Oow20ydLwLdCQdF
X-Authority-Analysis: v=2.4 cv=TPNIilla c=1 sm=1 tr=0 ts=69943526 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=CksTUBHohfg0KbD8FugA:9 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 suspectscore=0 clxscore=1015 phishscore=0 lowpriorityscore=0
 malwarescore=0 priorityscore=1501 spamscore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170078
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266046-lists,devicetree=lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com,kernel.org,linaro.org,linux.intel.com,suse.de,ffwll.ch,ravnborg.org,vger.kernel.org,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[19];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 29EA314A676
X-Rspamd-Action: no action

On 2/17/26 1:08 AM, Richard Acayan wrote:
> The Pixel 3a XL can be supported by reusing most of the device tree from
> the Pixel 3a. Move the common elements to a common device tree include
> like with other devices.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

modulo these disables

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

