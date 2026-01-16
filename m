Return-Path: <devicetree+bounces-256198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DC55BD338E4
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 17:43:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7223C30ACE70
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 16:41:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C72E2399A49;
	Fri, 16 Jan 2026 16:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i42Www/N";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="VWnWp3T3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7709F33B95A
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:41:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768581713; cv=none; b=WamKTJY9pfkDUBZjkGJHXEOUyigLPMfuHmTkPcPfCjfQ5cB/LT28xWZJSspfFuwM8j76uSPTpEvhrT8CRA+v/pzJphzWMQqtngEsWjxpEPXmGEy9G7AUm9M94B3Wqc9++D3phqe2xOJDS7lC1pdtXd+znCq6pzpDQtmi3CsGg+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768581713; c=relaxed/simple;
	bh=0H54WM5icrDDsHWx0slJii+LQKMQlvrQdSIj++zZk/A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L5y3Jg9BqY9wlRZf6BcsxktvjgO/TAVzRyWGnkjkmxxgALmh56KAho54VB8G3llFzoTPzvihvTiz5SRbbp73vV1cJetK1OUTKpeGkNvq2jCedtjcgXVOdotWfWiHEwWCOqL658F+NKkOvgkPrii3JJynQjeGMgjaUIiJQr6UNIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i42Www/N; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=VWnWp3T3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60GGUwWu1240858
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:41:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=iAhjhpP5g5sO71epspZ2mzNR
	fO/LIFwmhQneKuVWClY=; b=i42Www/NdZN6LzItRHhs1lGNrTjUffsxmgdOuTcw
	SwXr0VTXaQvPOZiHg58VQdO49hyLYsnLXM7E+rCHPl4SrIn8z6NQKLMcuOhXkes3
	TSfQqynYD0YJHu+72n2CBiBFnTOsOusQI0IyRrjXjefyGsjDZ1Gi0i9ANX70CBi4
	4JXhaElFc8ikkOrLQUHj6AsmlP6g+5Y76wPEPtc8mDp4Hf2VQHkZWqsjR916DC2d
	D0X8EI+oE4s5NRc9NJ8DORM+sb9ob059Q7n7gdhoL1ohDTQmGuEd4ey0Wyk+HcPb
	mF6dj2VDj1QTQRqU5iEilTmhMRYZyZkxgtbmtrdmpEpoVw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq96stv8v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 16:41:51 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c5311864d9so480275985a.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 08:41:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768581711; x=1769186511; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iAhjhpP5g5sO71epspZ2mzNRfO/LIFwmhQneKuVWClY=;
        b=VWnWp3T3Wi4p510UfRAQ//b/ctaQa9Fb32R5I4OiyjJLMQWkdLuHj5T2Mk4IuGyToI
         11u72hTyrKXnf8Ed8OxNzH7BoCnr4ckHb9AoAbqDq4Rd8Hr4mPAAVXBcfdp6fbyHctD8
         /mMgbRWWPIuMbA49eF+8wqkiYnvd3ybrw/vnsqQtRllklh6ov2cPNr03FzUnX2QlQeTz
         IDknUWoNScow7tb8RgTpzgOzo0upG2YWvq6B5yvUXBWBBTD0fTjJIgkmdCwJqmBuDS+7
         eX4a4JlHfP3xr+HyWgtutcRZcx6lD5tTUIsLLjCFYXp/CNrYy9t0Sz8XTCcpAQClocUV
         o/BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768581711; x=1769186511;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iAhjhpP5g5sO71epspZ2mzNRfO/LIFwmhQneKuVWClY=;
        b=jviYq1WPvGyLxwohlpI8PVw8BgQbKaLeu2WhgJmTKVFeNaQ89oqQ5vfH74bbi8e/6g
         +ZrduXcYwKgporLdT+oUaU8EOMAwcIsa3o7DogxSBLNsO4lBV11cvO0fMyGMPjHbDe0X
         bWfVY1KL8IXmjsYxGiiXtoajtYyyJzM2IkYinvBq/VeHOODUaSFSw58w8a9auXX1C/P3
         XtNOomXmbtB2agxcTjK4IKMHpisd/CFu1cxG4oMW9VJLQhf9B8ntl4OICoVOvVvbZfmY
         bTV2F+qgelyNjEBdLFqjaZ8F1re0DqFE73437VT+Ce7eUlI/wFU+9QAJqITk87xiitlN
         uuxQ==
X-Forwarded-Encrypted: i=1; AJvYcCUy1Qh6NFBEg0QyxzW2bPdCBih+FazJb/0Z0sz65O8SMR+TFPV733PLtRZtE03LeF11WUF1M3ZS0epL@vger.kernel.org
X-Gm-Message-State: AOJu0YxCG10CFVhMZZNOw1e0ahbsuaGJSOiqp+eRcXtgTc7fBhYVt65Z
	rN19ybGXeS4R/ERs+iLxrnQhAmuY7UmzJ/tsxWXAseAbBnJ50i0seRYeox3mSp5gZH9gtH6L/N+
	VKmFKKoDJc/cadC7AcHTWkdwVDYZ1AJio9szwfAxPTSE8fv2yHH4h9pwXkEv+uqZy
X-Gm-Gg: AY/fxX5+tyCIjOR7V7Dky/cPTjIvyE4ryRNKFd4F76JpEdEIHYUvJVU4K8urvmGpUvA
	U75SuVOX6IquWZYJG/YjbneAUbPNkhgSXzaXPun0CMZu36PK4cbw0BTKvPIAXOaQsH155o5LhLS
	C/rJHKDQssHYTDICcXAhcZutUtVk/X86WEzvAVt+wIai4EXILZ7dhEuIhqEGiEQHDbtMVjZf21F
	+STwvn1mxa1mUuXgQfXH49MZlx6hUnTRxyqC9x3QGl7/0PM2alKArFr6FOyTqgScoGSWJsjm4Lq
	rkMqEO7LE623K1dBW+T8LhN+ikOqaElAniTV256igGnqfqcCFn8MtV7KmA+bY3PWsbVdDWIhZJi
	Ym3buYugySa/VFgRdW+PScj0TwvdPl9oel/49MhOU+4HQTBCUeeVd7ZbETj5TeeIdIl3JfQUOwk
	+EY5DGnLFMPEhcOkZ1rzF+5cI=
X-Received: by 2002:a05:620a:f03:b0:8c5:e166:fa14 with SMTP id af79cd13be357-8c6a67a12c4mr475981085a.73.1768581710550;
        Fri, 16 Jan 2026 08:41:50 -0800 (PST)
X-Received: by 2002:a05:620a:f03:b0:8c5:e166:fa14 with SMTP id af79cd13be357-8c6a67a12c4mr475977585a.73.1768581710052;
        Fri, 16 Jan 2026 08:41:50 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf3a4ccfsm899874e87.99.2026.01.16.08.41.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 08:41:49 -0800 (PST)
Date: Fri, 16 Jan 2026 18:41:47 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jeff Johnson <jeff.johnson@oss.qualcomm.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Matthias Kaehlcke <mka@chromium.org>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, linux-wireless@vger.kernel.org,
        ath10k@lists.infradead.org, linux-pm@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Subject: Re: [PATCH v2 04/14] wifi: ath10k: snoc: support powering on the
 device via pwrseq
Message-ID: <d4ttsbhlw4c2fvgpfwgnc5mdh2egc6nwluj5pmkst2sunpn6m7@7b6by2eboob4>
References: <20260106-wcn3990-pwrctl-v2-0-0386204328be@oss.qualcomm.com>
 <20260106-wcn3990-pwrctl-v2-4-0386204328be@oss.qualcomm.com>
 <52b2b799-09e6-40a4-bea8-c7e8bf21cf51@oss.qualcomm.com>
 <15470b51-d398-449d-9017-304df5ad7cef@kernel.org>
 <132c34db-07c6-491b-bfda-f3c51462a184@oss.qualcomm.com>
 <f35b1380-b7d4-45e7-94ad-9f76973d3289@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f35b1380-b7d4-45e7-94ad-9f76973d3289@kernel.org>
X-Proofpoint-ORIG-GUID: 0VIaeELH-zl8WGYjRlfv7xPeb2MP9u-Y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDEyMSBTYWx0ZWRfXxRRrYlx7tk8W
 hkyTuc9YbenGibEtfh2zgbsQ3oKTRHgdhreF54RfqMrrso2FBfh1iMz89UDKy4Vj5Tmvmv2frSk
 jaHsXmohGfFAvuuMPoCFy+4jVx2wv/yx/NzaFNzcoU5+T6ZaDC4oPMclf/o4sUIQVnQXGbFgbgu
 Wb1+Kp5tScy6Vc3mZhCww1czey4b0+cvXta3jDphzgF6agLapm/QbUsHalqX2bcfwNmoTQVOb5L
 v5qzCJCZprFnVjwYo2Hd3aDA4DPsL/LpFUmeLnc0MBxqGbcUJqw7de+jFhumKd0MRn+tk1c7DeG
 KqdX7Ts0yL+lztMY/qBKvdXc/5l1tT6VKf3QwlhIIpfNWDkNpuNI+GUgag2BIM6cwvM3kAK4Bgp
 QhbsrJ8TnMQcpUZhm6Mbc+/T/fZycr8eDD7ZaOWtAp2VJQE5HhhLJQBy+G5JAySDPuWcAXOa5V3
 YztpAMttX0LsZi+4szA==
X-Proofpoint-GUID: 0VIaeELH-zl8WGYjRlfv7xPeb2MP9u-Y
X-Authority-Analysis: v=2.4 cv=M9tA6iws c=1 sm=1 tr=0 ts=696a6a4f cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=d62U7F-bSLN4PTEm1scA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_06,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 malwarescore=0 bulkscore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160121

On Fri, Jan 16, 2026 at 05:08:58PM +0100, Krzysztof Kozlowski wrote:
> On 16/01/2026 16:18, Jeff Johnson wrote:
> > On 1/15/2026 11:48 PM, Krzysztof Kozlowski wrote:
> >> On 15/01/2026 23:30, Jeff Johnson wrote:
> >>> On 1/5/2026 5:01 PM, Dmitry Baryshkov wrote:
> >>>> The WCN39xx family of WiFi/BT chips incorporates a simple PMU, spreading
> >>>> voltages over internal rails. Implement support for using powersequencer
> >>>> for this family of ATH10k devices in addition to using regulators.
> >>>>
> >>>> Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
> >>>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> >>>> ---
> >>>>  drivers/net/wireless/ath/ath10k/snoc.c | 54 ++++++++++++++++++++++++++++++++--
> >>>>  drivers/net/wireless/ath/ath10k/snoc.h |  2 ++
> >>>
> >>> My automation flagged:
> >>> * drivers/net/wireless/ath/ath10k/snoc.c has no QTI copyright
> >>> * drivers/net/wireless/ath/ath10k/snoc.h has no QTI copyright
> >>> * 2 copyright issues
> >>>
> >>> I'll add these manually in my 'pending' branch
> >>>
> >>
> >> And why is this a problem? You are not here to impose Qualcomm rules, bu
> >> care about Linux kernel. You cannot add copyrights based on what exactly?
> > 
> > I am a maintainer that is paid by Qualcomm to perform that role, and hence I
> > have a duty to enforce the legal guidance from Qualcomm when it comes to
> > contributions from other Qualcomm employees.
> 
> No, it's not your duty to enforce rules from some other departments or
> business units. Especially not without agreement of that person. You
> cannot just add copyrights to other people's commits just because you
> think that such copyrights should be there. Only the copyright owner -
> which you did not identify here and email address of contributor does
> not imply that (you don't even know what work contract a person has) -
> can add such copyrights.

In this particular usecase Jeff has enough knowledge about me and my
working place. I will have to resend the series anyway, but otherwise it
was perfectly fine for him to correct the copyright.

-- 
With best wishes
Dmitry

