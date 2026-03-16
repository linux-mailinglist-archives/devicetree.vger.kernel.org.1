Return-Path: <devicetree+bounces-276105-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wN9nB3zit2mzWwEAu9opvQ
	(envelope-from <devicetree+bounces-276105-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:59:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BB4B62985C6
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 11:59:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 23601300D0F6
	for <lists+devicetree@lfdr.de>; Mon, 16 Mar 2026 10:59:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DB3E3909AB;
	Mon, 16 Mar 2026 10:59:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="csT/I7l6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YwXUzeLd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5FF38F248
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:59:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773658745; cv=none; b=l7M3FgclPfCc+5pV+LJGMZnZwGJhU5ux1eP4GjMTSflXPm9yi1B5sw/L6Gs5GcvDau1YXgeokEBamys7gS2Z5weqEg5Lp4dzjx1Jjh/yH+diu144972STChzo3Rc4NvGodCh2N5ckK2/IQ3y0G+WuTLJccgI5J0H8YnT4vRukZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773658745; c=relaxed/simple;
	bh=Cq9/tNNowWbWN+SRb965lUUGFrgBT94hxzirPv+7Vvs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ErZhT0qig88umnB0YCWgMwolAMphqtOKZ5E4YkUMKEVFaCzGu30irJ2tpNH3zK5E1kvi87bfGa8Yrrqk4d15a4wapwGDDODvQcwvdYlHDLqdV6rF49yc3MdHr2FCk3LPnmDCLNfArzxmzhMIbQl71cRJL2ldyNmds2ZiAjVNPnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=csT/I7l6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YwXUzeLd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62G64fQP323582
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:59:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iEBCBWOuvOwrAKBTQB46BQsEOuACakW06XjRHsukSoY=; b=csT/I7l6DY6IUV3q
	9kyEw5cHwln3f6qck6kCB+5r5vmgKA3kfFEd2lGGkABfNAYvZdpigJnM3o7BJukE
	kSYKOoWC5pks/EwrYjYv4kC3iRGbGD73WRgJhgeNi5I1w8qJwcyxE7H0AezqNZhY
	KLplJnvnp/9ta9Wm3uRoxhgU7TbjEfVC1bxrE8bfaCmXHcfY5aFHb6peaz4BPv98
	h0a6ehSCaUeIkyFnFSTWYwwKJYF+Y6T54SRIwBzEAKpCMwuc8YuHMmNHUgEGMG4b
	QseUb+PJKvsC98b6+e/bqwht0XGsaku4UZKytNmDuBNKoHhj8ehutXIK8qKL4BbI
	jr040Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cw03qne7d-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 10:59:02 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2aec8d85199so24990005ad.0
        for <devicetree@vger.kernel.org>; Mon, 16 Mar 2026 03:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773658742; x=1774263542; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iEBCBWOuvOwrAKBTQB46BQsEOuACakW06XjRHsukSoY=;
        b=YwXUzeLdRaBwiQ8ibYp6Rl98OTbkL0VcDRE2CFC5F1fOntQOnbyl7GscUdOKJwRiGV
         DHoA+mw5cD3s+wfY66I7nv5gUtsgXOJCRJIrHX2XAmAgQCVzrvZjcKmc5qwg0EpdXdT9
         ss/+v/lZMX4tPkNI0HVg23YwXDGUiU63MsTF6TFGMV7gue8SrP4Snim/pJhQLQ9Kzs9V
         l2zj/on7XoOd60FE6YS1l10Md7XoFDYsD96dSSs4lXelQ63UC8e9ekFStlhYRGtMqw49
         9GkI4p4bLWfD+5srbacsoh7oXgYrcAfADt/04c62lTo+vFD6thj/gCjI3Rs7adCqJO3U
         d19A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773658742; x=1774263542;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iEBCBWOuvOwrAKBTQB46BQsEOuACakW06XjRHsukSoY=;
        b=YveB5299uMKOFOOv45iPFwRZvNtIJ1Lho9uKsz3Ix7lbTs/9rGaipFqHWTGl9CSfwF
         Hf3tWPxcmk/MIJd5zl3JbeyyB9O2qdj5Z17WD00XBKOML3+oq2SFEmZu+M1aBM+NAnGS
         a6nZtVj6JRL6mJAZX+2WU9KTxkhK+EmJLTJJQ9KP8v2m5uHJDUXNEVnwwTb6Wc6PZqwA
         EuOBDzS/zX6zWmxi5tzdU/JESIDgk4WVKFRuyROV6vgNZ07t7tfF5Epq+P01Zlq+qp4n
         M3Dv/fhw19Ys5VmEJmnwrmL4awy97f9aGprzo62LB/6O+FIMgB0TuGQTbWBIzfu+E33T
         iR7g==
X-Forwarded-Encrypted: i=1; AJvYcCUj/SC3D4+3FnBUA7z0RV0fNXYJqYNrvS6cdk0lHk3H5qQjVdV5jCDyXHZ4hAE5wvg4lTKJJQq1xBD7@vger.kernel.org
X-Gm-Message-State: AOJu0YwUwv+RdMR560ysjQ9DqadEAdT97d24lU1OUssOBPD+9RM+c1hO
	pNWYzUfiKsuJr9srDHlLI5CK4g3J17czkPe2K3HAxX2TceNWHjSbGw+o4vgCS6NGw6daZda9mtQ
	YqCLMx4TtA9po54xA3MI43KPke+DamwlCKO+wkYHYxNQ31Z6xY6PZWoYPMs4X7tEc
X-Gm-Gg: ATEYQzzoyVu2E8OuKmGVzofA+yG+9OUdranGe8wJyGrKoVL8RVl7CweRSr+hwQHbtsr
	kiToEKodhF/hXpM3RkC9HY0RwiKhb1GoFSDWrmXfBBo4Gv/Mtry6VZ2FbQ/JhBQpJo0q9fs7EMF
	Jh0OJjyNShmIHPviReEIpIP4eGMxKlXSykXpOYRNToFVTjXWqca6AwUz9j4+mkPI8qTGDmGBMkC
	clqz1yK93Se/zTTsBNwUuPmiCQ9w/kDrN1KyDzN9UcqGkFqByi6/Sm8SiIRDQmgOV8hoOKIuxkt
	X02sxebSvEwM7N6Z8J+ViVPn/ranATfh9gcuXn3KbjBO2br86iSpP7Blm/H4ZeilUgp123Rfy35
	9cmLoeLnvJaLduEtDwFBuPYLzbHIUTCoxuAkF1mlPWGWGybjXow0=
X-Received: by 2002:a17:90b:3c81:b0:343:3898:e7c7 with SMTP id 98e67ed59e1d1-35a21fdb688mr9715917a91.12.1773658742001;
        Mon, 16 Mar 2026 03:59:02 -0700 (PDT)
X-Received: by 2002:a17:90b:3c81:b0:343:3898:e7c7 with SMTP id 98e67ed59e1d1-35a21fdb688mr9715875a91.12.1773658741505;
        Mon, 16 Mar 2026 03:59:01 -0700 (PDT)
Received: from [10.217.223.121] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35b9230f2fasm5248548a91.9.2026.03.16.03.58.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2026 03:59:01 -0700 (PDT)
Message-ID: <fb8cb7ad-68ab-482a-b70b-5367240232fc@oss.qualcomm.com>
Date: Mon, 16 Mar 2026 16:28:52 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 11/11] soc: qcom: ice: Allow explicit votes on 'iface'
 clock for ICE
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Eric Biggers <ebiggers@google.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Tengfei Fan <tengfei.fan@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Yuvaraj Ranganathan <quic_yrangana@quicinc.com>,
        David Wronek <davidwronek@gmail.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>
Cc: Brian Masney <bmasney@redhat.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Gaurav Kashyap <gaurav.kashyap@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20260310-qcom_ice_power_and_clk_vote-v2-0-b9c2a5471d9e@oss.qualcomm.com>
 <20260310-qcom_ice_power_and_clk_vote-v2-11-b9c2a5471d9e@oss.qualcomm.com>
 <3a80a27a-0586-41ea-957d-77fa3d023675@oss.qualcomm.com>
Content-Language: en-US
From: Harshal Dev <harshal.dev@oss.qualcomm.com>
In-Reply-To: <3a80a27a-0586-41ea-957d-77fa3d023675@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: O6HkZruNQuvwGJKsdKxdDvEQqsF5AKFG
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE2MDA4MiBTYWx0ZWRfX4V6Od5LNu+gd
 dsxYSoBlx+PGmrR6FBzWVfABiNcLm7pDSp7tQezWllYsJb6eLCuB0z5Kp4DyNBy+0JEs9FJWCgY
 o0xjELIkDK+1shvSlyyILpwz1ysO4uqmTIzFhPdaQq933cDFBjxUDhmd7Z1a2Iykh3qIYQcXXMB
 vnAQMT8YxLl4eQil6Ci9mbqmIO/IYk7b4+3LQ1sJ8ajq7WQmD1M8ITDh9EGqMQZx/Ujsssnsk0g
 SxOdAnzUWY+V8vFoVVnmS54k5rLizOI7DxCk3cxx3+RQC/FDQ0+MnKa43k7Y1yg7+8lIz2J1Hjd
 NxXAgvBqxpFlQ6UMHI5ZyENumw64t0m7c/0odmdzo+5stF6u5lBOAhZbRKmhb+f0MXeSmWiOidx
 Q+XkZitq6vTj12wTrMCI1NAhpQcDNs59mu0hKrYe1DE9jkkRVdA0oJRzoLRdGc64ALPT9tEreIe
 7OvgJbLRd2OOEOE57hA==
X-Proofpoint-ORIG-GUID: O6HkZruNQuvwGJKsdKxdDvEQqsF5AKFG
X-Authority-Analysis: v=2.4 cv=ZbQQ98VA c=1 sm=1 tr=0 ts=69b7e276 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=7T9o6mVONip3bYQ_lJkA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-16_04,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 lowpriorityscore=0 malwarescore=0 clxscore=1015 phishscore=0 spamscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603160082
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-276105-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[oss.qualcomm.com,gondor.apana.org.au,davemloft.net,kernel.org,chromium.org,google.com,quicinc.com,gmail.com,fairphone.com,linaro.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[harshal.dev@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BB4B62985C6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Konrad,

On 3/13/2026 5:21 PM, Konrad Dybcio wrote:
> On 3/10/26 9:06 AM, Harshal Dev wrote:
>> Since Qualcomm inline-crypto engine (ICE) is now a dedicated driver
>> de-coupled from the QCOM UFS driver, it explicitly votes for its required
>> clocks during probe. For scenarios where the 'clk_ignore_unused' flag is
>> not passed on the kernel command line, to avoid potential unclocked ICE
>> hardware register access during probe the ICE driver should additionally
>> vote on the 'iface' clock.
>> Also update the suspend and resume callbacks to handle un-voting and voting
>> on the 'iface' clock.
>>
>> Fixes: 2afbf43a4aec6 ("soc: qcom: Make the Qualcomm UFS/SDCC ICE a dedicated driver")
>> Signed-off-by: Harshal Dev <harshal.dev@oss.qualcomm.com>
>> ---
>>  drivers/soc/qcom/ice.c | 11 +++++++++++
>>  1 file changed, 11 insertions(+)
>>
>> diff --git a/drivers/soc/qcom/ice.c b/drivers/soc/qcom/ice.c
>> index b203bc685cad..e05dc7b274e0 100644
>> --- a/drivers/soc/qcom/ice.c
>> +++ b/drivers/soc/qcom/ice.c
>> @@ -108,6 +108,7 @@ struct qcom_ice {
>>  	void __iomem *base;
>>  
>>  	struct clk *core_clk;
>> +	struct clk *iface_clk;
>>  	bool use_hwkm;
>>  	bool hwkm_init_complete;
>>  	u8 hwkm_version;
>> @@ -316,6 +317,13 @@ int qcom_ice_resume(struct qcom_ice *ice)
>>  			err);
>>  		return err;
>>  	}
>> +
>> +	err = clk_prepare_enable(ice->iface_clk);
>> +	if (err) {
>> +		dev_err(dev, "failed to enable iface clock (%d)\n",
>> +			err);
> 
> dev_err(dev, "Failed to enable 'iface' clock: %d\n", err);
> 
> (this line is very short, no need to wrap, also some nitty touch-ups)
> 
> [...]
> 

Ack.

>> +	engine->iface_clk = devm_clk_get_optional_enabled(dev, "iface_clk");
> 
> Check for IS_ERR, _optional won't throw an error if it's absent,
> but will if there's anything more serious that's wrong
> 

Thank you for this insight, Ack.

Regards,
Harshal

> Konrad


