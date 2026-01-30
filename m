Return-Path: <devicetree+bounces-261163-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UPgQKRyMfGnvNgIAu9opvQ
	(envelope-from <devicetree+bounces-261163-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:46:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 912A6B97DC
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 11:46:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 03CA330067AE
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:46:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE47C3783D7;
	Fri, 30 Jan 2026 10:46:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Es+HWqlm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QUDR0yu2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7634A31064E
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:46:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769770007; cv=none; b=HtfBh3hz+eX2i86YJ+Vtf35JOEGiSDQTHMDybaWM+lGFJHQZA5Rpqu4nMy8CYIlxi8FIS1LL0JLKpFHYMLj9NJQ4iVOVVtP02g4CtSXYz0mThtPN+H2FobXO7BKpbRqI5lEboP7f2GGMPFy61rO93WgDJ47LDg9/YfI4PRn2UHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769770007; c=relaxed/simple;
	bh=41DxCDI9BLFfSiB8T28LzqLjk8IPwF3a9dLgM4flHpo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ug96vlopA5AVO2KI23PoBaMhBC350aw8yLtsMC5CT1C71F4DwEIT2imKLYR47g4WejFBaT0iPc17IeYv0JRqXsQ690WNzHgFhkhBar/xDuwy5Esp2Gu+Y5UbdnoHCY15xWkO9xCKG0U50Ahn3qhDBHCzGMLUyIwP3uyT/CYP7hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Es+HWqlm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QUDR0yu2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60U4tXL82295105
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:46:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eZsEGCm6nNqyjRWqQjZl0F8JQuVVl2PSAjQwQvNXoBI=; b=Es+HWqlm+VyDDgxj
	o2eD0d5F94Bev3NsX1ujj3HTp09Bp14zOFDc72zC5aP0QrvmBkVCVnWX+5Tmv7IA
	dZEUNIT8CS9C5mBUDQXy3bluifOlCf9iremn2J4eYplhVPdr4UcrslUePfphl+yM
	OLQfTD3rJV2dAtDGi1NCHXIz+M0mn/3dUzmJ7eEGgcxnUpUiypGeHTDKg/idbceD
	Z20yAqbb8J4+ZF5Dt3R/odEbmj0yC66C8oatnjJd6nGgF4D9daEUXnDSNmciPRoD
	BPhvl1V/vY0mauJI1b5SqDdj3qhwQ/FfAyFwNiYyonKEuYlHxTUWDlS/ymDWUVpO
	XF7NVQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0p1x8ytt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 10:46:45 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-50335116a0aso1607021cf.0
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 02:46:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769770005; x=1770374805; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eZsEGCm6nNqyjRWqQjZl0F8JQuVVl2PSAjQwQvNXoBI=;
        b=QUDR0yu24cVZYWzJoN/3ezToT6vXZTBsCOpMxK1BshsyXYrK7FS+Z4JOAhgcIWaDT5
         /T1KOTUfGC8puZDqsIEeeGKq9G1MXHeCm0QUnzNkx7I2z4H/4a0UW7gYk3Xkr7IVafsq
         FVKHyui3xUd1++OQusXLHrA7m0++f45ja8yaKlzAble2iMPOYIgXt2recd3X6jTcssNl
         4nxPrLAVtnRTFAd+XUbyLY3wjTT/wcNQkeNkyETjKAvdOcU4vVrFE6xPWszYqhVLA5KB
         9GW1K7wrdTivmR+DTFkvFZKvi4f3ZUqBkmsOB7ZWHTf60DLZ/ru63QR2xgNGGDfH57Ts
         ykug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769770005; x=1770374805;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eZsEGCm6nNqyjRWqQjZl0F8JQuVVl2PSAjQwQvNXoBI=;
        b=SRdTRjEubmHIEqEsNaM+tbd+RmxmRJHpnx1MzQRdY4Mu1ZACXyjdN4+xyVN1vrrah9
         TsbNsOXCTatrArvh1dL4YS8Riob27GK/8FIqPZ0ke8UAk7J6F/E6ipYNrwJ+TKWEefXg
         b2qWAH7pDRIx6TMO47bypiPC46LHLYZZaZVLlDFlCl8jxmCaQm0Qf53Z8Pkyjt15lzqu
         xXvu8ZZFH5tw5teTnCWw0bzEmoUtAGpgpfDq6NMoUclr1yKHXuV4uvvVqT7eYwncolWe
         GuvDbaoc7GRgi39btBT6SbNb1hFSbMBwA9Gi1RHcZzt83h3cm3wjIaLL00P60GRkWQke
         hHow==
X-Forwarded-Encrypted: i=1; AJvYcCVj7qfOjq9eduxcYrHczavbIv+Ud5vuQqj3fWMVlBDVhijNLUMyKfPoZxWTMe1cdvZURUr+mCO+v62l@vger.kernel.org
X-Gm-Message-State: AOJu0YxcA1KWkCgPxIWkQm4UlZM0W8BhhT4dBA+psiGXCDPLgNJHOcT+
	+jPrPtjL1BNPz5Xdiw+0cfsYJGIOIiwxCIfrGrgR4ahSQTzj/fvxjLvgcLhjxtcjmkSC6Elmhu/
	LEF8uJB7ZQm9lODcAlChRuhKIZa7M1U8CKf53C0vFSMi7PnjgTcdfsAVAVPy8/0yX
X-Gm-Gg: AZuq6aK/oKJ/bRpnxGQ/8IqMHMpQb0rUz0Da8ocsKxKTpQ4JZttgnpxeAQYm9WSqvvd
	CmkD206+ajNB9n9bE03MBSOtS3kmMVAcinkrROKyVxtjAQXkKtW6KWHxzzhTHsxEMOx8WaKbJzJ
	gUJZhm7TSj+WRFNAWn49Pr+L0yVea2NCa2Z64urNgbG2CrHKNXnmmBTA5/Vtvh2WSPSzLBUpREu
	EoWGKv1X9AeHrSt6LWC8ihPplSMOJlDASJWlQxIqeATLwlS6xc4k/9iPpWnyyLq25/VwwCtNnzV
	OA12jZAn+RJrGxwzKQczHKf8vthMKo3i5VS2VvQ0oq/6ko85Bxqm5+golvcRdL7H6mV4rrNs6Nh
	9RZIHWs2ZMhTKt+WzIHzPjwMbGRSZpX6lJrUVdyboEk1/t0e1Fa2vAnJJHghBn7zuYI4=
X-Received: by 2002:a05:620a:31a4:b0:8c5:3892:a554 with SMTP id af79cd13be357-8c9eb257d0amr251629785a.3.1769770004490;
        Fri, 30 Jan 2026 02:46:44 -0800 (PST)
X-Received: by 2002:a05:620a:31a4:b0:8c5:3892:a554 with SMTP id af79cd13be357-8c9eb257d0amr251627685a.3.1769770004057;
        Fri, 30 Jan 2026 02:46:44 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbefc6685sm396249166b.17.2026.01.30.02.46.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 02:46:43 -0800 (PST)
Message-ID: <646bee0a-8b10-4fa8-9d17-030876179c02@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 11:46:39 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/11] soc: qcom: ice: Add explicit power-domain and clock
 voting calls for ICE
To: Harshal Dev <harshal.dev@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org
Cc: Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260123-qcom_ice_power_and_clk_vote-v1-0-e9059776f85c@qti.qualcomm.com>
 <20260123-qcom_ice_power_and_clk_vote-v1-11-e9059776f85c@qti.qualcomm.com>
 <7da1727a-c1cd-466d-88fc-e140b2e7fe5d@kernel.org>
 <54bf72b6-6397-4655-9c30-680b1374400b@kernel.org>
 <82a6ba61-94a4-48bc-a012-d09152b32781@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <82a6ba61-94a4-48bc-a012-d09152b32781@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: pFIkcVGu_vmtKOAFxvE4dsnt2_TsufwZ
X-Proofpoint-ORIG-GUID: pFIkcVGu_vmtKOAFxvE4dsnt2_TsufwZ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDA4NyBTYWx0ZWRfX9/nPy4Sc8wzo
 5NBWRc5ZVi0RVlcF6q2ERul1rHjYYugotYS1Pxcg/nZVlu2+qT9BpPb4Ov3mO3o4qm5zLfyrajd
 NhD4wB9t1H0Hqx6ErtbDkIXrm1Ccmy111bua0DJpKaayGlUKTyZoQ0xsQdrlXYd4STz/AbU+jXG
 Dizm0NhgkIWtz+S4qVa8lMm8+eRd+Wy4gi/OwRwJ6r/rgnxItDeAwfG2se/DULQ1OZEYBlHSjmE
 L7U55rp0Cp3NDGb2Ss7MS2PBeialyN1d5dRbojVxAjy4ZQDAPkPgw+J7FXJ+sMizU7Ljyzi07aR
 K3oEY3ueu/rqtbAEHJjbKMmaADaXsKU39RLRKfx9Crfb+/QsEzxsV40DoFtQr0B3dOSPaWrsnxs
 L1+afaSKNWBNxrHIl21TGxF8BepuAw775mXSU1Q5yIMsAPOiMcERuR7CT1Bum7LhA7xcldMC/W/
 WTX3vLbGEQEYXFc4t9A==
X-Authority-Analysis: v=2.4 cv=G5cR0tk5 c=1 sm=1 tr=0 ts=697c8c15 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=CfqEwSn5MTdR7akHWEwA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_01,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0 adultscore=0
 priorityscore=1501 spamscore=0 phishscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300087
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261163-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 912A6B97DC
X-Rspamd-Action: no action

On 1/23/26 12:12 PM, Harshal Dev wrote:
> Hi Krzysztof,
> 
> On 1/23/2026 4:27 PM, Krzysztof Kozlowski wrote:
>> On 23/01/2026 09:58, Krzysztof Kozlowski wrote:
>>>>  
>>>>  	return 0;
>>>> @@ -584,6 +597,10 @@ static struct qcom_ice *qcom_ice_create(struct device *dev,
>>>>  	if (IS_ERR(engine->core_clk))
>>>>  		return ERR_CAST(engine->core_clk);
>>>>  
>>>> +	engine->iface_clk = devm_clk_get_enabled(dev, "iface_clk");
>>>> +	if (IS_ERR(engine->iface_clk))
>>>> +		return ERR_CAST(engine->iface_clk);
>>>
>>> And here actual breakage of ALL in-tree and out-of-tree DTS.
>>>
>>> NAK.
>>>
>>> Please read internal guideline.
>>
>> Internal docs are pretty scattered and messy so I failed to find this
>> there, which is surprising because this was frequent feedback. Therefore
>> please update Kernel Upstreaming internal page with following:
>>
>> With few exceptions, it is not allowed to break the ABI, by making
>> bindings or driver changes, where the existing or out of tree DTS would
>> fail to boot. Updating in-tree DTS does not matter here, because DTS
>> goes via different branch, thus driver branch would be always broken.
>> This is explicitly documented in DT rules and explained also in
>> maintainer-soc profile.
>>
>> You need to either provide strong justification for ABI break or make
>> the changes backwards compatible.

If the ICE can not be powered on alone without this change (i.e. no UFS,
just ICE), then please spell it out explicitly, Harshal. That makes for a
valid reason to break the ABI.

Plus the fact that without an OPP table, the voltage requirements cannot
be guaranteed to be met

> 
> Ack and understood. Let me write this in a way that makes it backward
> compatible by using devm_clk_get_optional_enabled(). Like I explained, for
> Linux distros where CONFIG_SCSI_UFS_QCOM is override set to 'y'. This
> clock vote isn't really needed during probe.

This is really a side-effect that we shouldn't be depending on, or
even considering as a backup, since the UFS driver may change
independently and stop behaving this way one day

> In qcom_ice_suspend/resume(). I'll only prepare/un-prepare this clock
> if it was found during probe.

Clock APIs generally happily eat nullptrs

Konrad

