Return-Path: <devicetree+bounces-261700-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 1AEiI35vgGkw8QIAu9opvQ
	(envelope-from <devicetree+bounces-261700-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 10:33:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E44CA26A
	for <lists+devicetree@lfdr.de>; Mon, 02 Feb 2026 10:33:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2CFB430037FE
	for <lists+devicetree@lfdr.de>; Mon,  2 Feb 2026 09:33:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CBED2D6E6F;
	Mon,  2 Feb 2026 09:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Hl3Huccn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GGtvUyzY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7852857CF
	for <devicetree@vger.kernel.org>; Mon,  2 Feb 2026 09:33:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770024827; cv=none; b=UI+HkJliNTjxVMOetK6niyGblF7z/K6vCcRWkah/TgdamxR4gIjzvQwN12G8z18HTBZcoH6UCqUDOpKxlogIq8STXdnNEMqYH3f7mIb9ElmqEJII8gc4DWxFBX7rwZzTvfss96vVBvXU8NBa7mZ/lQgQ8wY8tRrr7fn+bpAcKvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770024827; c=relaxed/simple;
	bh=unPEm+1NIuStqMpaoStpa+gtyzS7uVlA6g5lUzFR8+c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V2XuCsjmgUlRKR8DT1dNu41XHTdh9BLbc9biAlRraqX1eZgx3lNgckgxanQUXH28TNsySNn59juSquz5vnhuL2FaV5sWNtA4mP+fmlTVdz2qnw2oINlU3Ps1VqLYx6SArFcLjB6xcituG7+WLksXuLRwDlemYMQ0enVxa9+1Dpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Hl3Huccn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GGtvUyzY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61284A531537337
	for <devicetree@vger.kernel.org>; Mon, 2 Feb 2026 09:33:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=gJHUyMi6ir8MaZUDuIcqes/3
	jjyrEWI6G8BBp7lKnpE=; b=Hl3HuccnZ9mJUs/r4VlQZnnsosIAWNfR2vQHiS+/
	8n/D/M2wTxSe4A9Og319ZFJrlavT3UzMSVA9T4KgIhbepGaOTDYYNo4bHHm/HoHA
	YefCr6YKsDGtjRSjEcieIzCRAZvS9F7xi4I+8KhCqRqLKNmnWubEKBTEdCm0fe1f
	OL8Z3D33FxT/TQyWXLgSWMnX7zUoPvnnUjBX0S/YZbZ/r6YIYP2Ar7F6zNAIf0QX
	khNC+mpvtkNHs5PdqNa6mQGtBFRds2W/4u+E/yzRO1OK3QEnB0oMN5/BCknFLCns
	hbdEA8QSY4TxRMT8nPsdokwRZ2b5xYqy7LdUDBqSMAwuVA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c1au2murf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 09:33:45 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a07fa318fdso44315985ad.0
        for <devicetree@vger.kernel.org>; Mon, 02 Feb 2026 01:33:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770024824; x=1770629624; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gJHUyMi6ir8MaZUDuIcqes/3jjyrEWI6G8BBp7lKnpE=;
        b=GGtvUyzYI7Vd+rMT360OrD+AnnJl3Caywsio+S267wzXKcnqjEPY+r0oczONwRqZ7V
         nTSdhbfzLZDwl9w5I94x1b2q5ToLABxVmhPGggbgYoE6J4A7I9Enmie9Gt/p9U0FqEpX
         iuPMD2FHRPmoovL+SqIpk8jOGhasf3lI1zobUId1RQ++OQrYf9ulYO3Wsp//+y3uHXll
         JfqcazVgNzoSpTBDDb5DsfTZS7WobqtL3lu6cA9fFnsLUrM+1wA3GeB1yzShclW7x5N1
         IqHGSOrqSqbSCyOOr/s7P05gdsX+76pevJFjM6LbRkhz/8MmmrAuQA3iGtsEVVpdadUt
         cymg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770024824; x=1770629624;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gJHUyMi6ir8MaZUDuIcqes/3jjyrEWI6G8BBp7lKnpE=;
        b=X3vsnMb/6iB4r0ymrqPdjbh9H/bf0vg9f2D8kXKpgUrIJpuSQ1RgzB9N7fllFGrDYg
         Ull1kJHIy1z60AE5EQ7ok9M73SLyKg5PTmLrffAxWMCOlTAx4mgN8OTTwHszrsbXIVYd
         xsxvzLwEo47L7eOVGJKQIMSsCMXFFSgf1F8r07KFsM799N+R7Pxs/5tURTQXTeKSDJAu
         ZaDX/EjfSu/x6IsGQA/LTTc2Gk+t/M70kzGQy4tWL96Brfhrp4HlmxbZ0Y5cW2+ihH/p
         x/k5AS12R6dUIdnXvmUNXB4RrcrOhVfzuA1ahUv0ah9MNztc8yPXFZeOriqQVlIs3WGf
         q0Zg==
X-Forwarded-Encrypted: i=1; AJvYcCWO3vqxkgTqFRH/kaZws4i83qP0Fsjqfo+18zupBel7pd1yhh8Vp8rdm21QnPdqHtDIQBvXTpYbFGbZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yys5qH9zYPgvd5eYGaQ3qs9/hGH5hJvHXn5xN0pKrtvf0uRuyQZ
	1zMscYpgp2RX6yQQIOzk4yS3CtWOKxdqZfWpg5khOGWkM00U1vPF8gPDXLwI02UQqC/LdMc75Ju
	2V3MMw2cIbjWMYocih0RPznRsLPLfk/lcpcWistTewFGeHKpl0ybotpEKw6fieu6v
X-Gm-Gg: AZuq6aIpNl1eYzcv9UyHMUup1+MMBWBYdRHw1hux3SbAbzXYGb4fcB5+zZhYhtCb4r1
	kMZuFhT4ZdrW5wNA+EUxqQiYfWwq1Bt6Q1pugEiAUEcmeawVt6FqDqOctl6mb/2/+CCoS6cXaWK
	Qyiryi/3JG/+/Hc2InYBg7YSrZIZ/Yc7uBj/BGfdmBeiH4Vevh9e/1Kaqh7ytnqQXeA1mhyeQlg
	nxVIvs48G2rBhRmmC6rSpXmEF9leskfoAIFjHDxHGpIbKNfl4X8dcEezmP9OoM+CoUuAFzyOuAS
	QZfrxjmZnk2yrrSIVm27RCr6fSKqLFwPgPgjFtSePE6QMWGpdIHCVnDhVBaVyAtS6JvnFWK3bG/
	BFqBE6bxFl05T9RnxhmWw+dDGssWKvYyKHf2Wc9vhFAscQ54=
X-Received: by 2002:a17:903:1a83:b0:2a7:87c0:2357 with SMTP id d9443c01a7336-2a8d96b18f9mr124758685ad.20.1770024824519;
        Mon, 02 Feb 2026 01:33:44 -0800 (PST)
X-Received: by 2002:a17:903:1a83:b0:2a7:87c0:2357 with SMTP id d9443c01a7336-2a8d96b18f9mr124758425ad.20.1770024824050;
        Mon, 02 Feb 2026 01:33:44 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b414f1esm139990075ad.24.2026.02.02.01.33.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Feb 2026 01:33:43 -0800 (PST)
Date: Mon, 2 Feb 2026 15:03:36 +0530
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        linux-crypto@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 2/4] soc: qcom: ice: Add OPP-based clock scaling
 support for ICE
Message-ID: <aYBvcBFVhwbV4UEH@hu-arakshit-hyd.qualcomm.com>
References: <20260128-enable-ufs-ice-clock-scaling-v4-0-260141e8fce6@oss.qualcomm.com>
 <20260128-enable-ufs-ice-clock-scaling-v4-2-260141e8fce6@oss.qualcomm.com>
 <20260128-daft-seriema-of-promotion-c50eb5@quoll>
 <aYBE/VljJTUNx3LK@hu-arakshit-hyd.qualcomm.com>
 <13e311fb-1298-422c-8859-1b08201743ab@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <13e311fb-1298-422c-8859-1b08201743ab@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: tTWe99AFlmhkg67nvJmKo7avNr7WidZW
X-Authority-Analysis: v=2.4 cv=TtfrRTXh c=1 sm=1 tr=0 ts=69806f79 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=L9uGvZmjxWfCn8EH7uIA:9 a=CjuIK1q_8ugA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-GUID: tTWe99AFlmhkg67nvJmKo7avNr7WidZW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjAyMDA4MiBTYWx0ZWRfX/l7z9LmX7Gsl
 7MLZO/tbsdHG680O6pwW15v2v/1EZ/0nc7UbAvOiLpbv+MyApbngUYtX9Ugsu45IhDowSK8023x
 a5HnsrZ0JWVVYabRmdAY6ggU9AS5oUuVfeImC3DT1QZmLMgaxXmNxWmcCvUMSJKAHDQjNGXSnZG
 rkDimUT0uoHYLzBYCOBSgklwZA7Hp78/dfPTsmfo5lXJxYBHrkX3UVlswy+CzwaOn5eYxO/NBYV
 BV7X610SiQNR5djPTuNK0Fo5pIBON7CWHTAfG86dx6zUKHBrCbilq+33qUr1AkQI5khkOzdfJo6
 sv3b7Wk/FulKZ/tj4Pv16O8jEpUBQ96J7kbSpDZrZ9FTAE1Z6yyAZ2YEUB5+CPpKOk0qfys8+v6
 u1puVs4RFzZfUQAyEjEb9QzRtE4TrzbHCM90EOht7859w3zFrBgfz3FCvahFVDTPs3MpAtI3rKJ
 LAT7UTBwh74OvqwydCQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-02_03,2026-01-30_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 clxscore=1015 bulkscore=0
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602020082
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261700-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[hu-arakshit-hyd.qualcomm.com:mid,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abhinaba.rakshit@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D4E44CA26A
X-Rspamd-Action: no action

On Mon, Feb 02, 2026 at 10:23:43AM +0100, Konrad Dybcio wrote:
> On 2/2/26 7:32 AM, Abhinaba Rakshit wrote:
> > On Wed, Jan 28, 2026 at 12:04:26PM +0100, Krzysztof Kozlowski wrote:
> >> On Wed, Jan 28, 2026 at 02:16:41PM +0530, Abhinaba Rakshit wrote:
> >>>  	struct qcom_ice *engine;
> >>> +	struct dev_pm_opp *opp;
> >>> +	int err;
> >>> +	unsigned long rate;
> >>>  
> >>>  	if (!qcom_scm_is_available())
> >>>  		return ERR_PTR(-EPROBE_DEFER);
> >>> @@ -584,6 +651,46 @@ static struct qcom_ice *qcom_ice_create(struct device *dev,
> >>>  	if (IS_ERR(engine->core_clk))
> >>>  		return ERR_CAST(engine->core_clk);
> >>>  
> >>> +	/* Register the OPP table only when ICE is described as a standalone
> >>
> >> This is not netdev...
> > 
> > Okay, if I understand it correct, its not conventional to use of_device_is_compatible
> > outside netdev subsystem. Will update as mentioned below.
> 
> In Linux
> 
> /*
>  * This style of comments is generally preferred
> 
> unless
> 
> /* You're contributing to netdev for weird legacy reasons
>  * that nobody seems to understand

I see. Thanks for correcting me.
Will keep this in mind while submitting subsequent patches. 

