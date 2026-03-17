Return-Path: <devicetree+bounces-276802-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uHKuMLKUuWkJKwIAu9opvQ
	(envelope-from <devicetree+bounces-276802-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:51:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C3702B0406
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 18:51:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 21FC6300E269
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 17:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A29537BE96;
	Tue, 17 Mar 2026 17:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fwd7kFDe";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TE3c6ZiA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBF0232AAC5
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:51:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773769903; cv=none; b=VpzVvkv2RuXivHWOXrv0VngaCIjSx+/Or14KPIfIxmZf5mozciOQYMJSZO9fmOwxtoVXPTWsRpf80m7dScp76qA6RT3CvkUo8k2pkvE0pj7tDPvjfXK2gPVIidsZrrnhTVwHaDQ4+bH9Jgzrf0LtwAxBov0pXcLapLEVwH+afj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773769903; c=relaxed/simple;
	bh=MGskx+l6rT6m8YMxc7kD+SejuBQipiRUgWHHCtlmoUQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=IjkWBcynrHuODLgaCATX7c55qdJFBI6lzEVa9vgBt4Wfd8LC6cJU/dpvaVsAtafLbRyfbwLGzBvIuDXtb1fZWDP7merV+mlsljWg/tEychVfO4mIDLopq5c2S1JpvKvmTR9t4AVgxEQ/Yv1Qo7k9inr0xuwoAqSOK454snH92ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fwd7kFDe; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TE3c6ZiA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62HG9t2I2006350
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:51:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nvowh36G+KcB2cVUdTY42GJw7Z7o+Itk+//u437cGqI=; b=Fwd7kFDerjZhpPxb
	A6uBOVs9b60TOjuh12cergkmJPZy/VsxlQQuz+20BIJkl59a4Gjk8K6rqLywUcKa
	NILOdQmN3z7xndet4opAJHfXO7jQzZxckPyg9S9M0bASS1UCj3a3aqLrTvFx+ddF
	htMbZGgRh0IfK/lWey3u+TeHYkxUy1ybijqEzPU4gWQgJGy2Ok3v+dzrpfpi6hf+
	NNMpZmZCDbYcGZjHpijTXshhH7YyCA/UAzofTYYQIGGX6HjFWQm3Eu1anMUZ4IBT
	Jmc8yYulAVDtlvRSenb41OdC+4lC+9WmZb8VB5dbiMJq1J4cbpdcGbfVq2fSZInt
	AcKWUA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cya83rcsu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 17:51:41 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd7de0e161so4018827985a.2
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 10:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773769900; x=1774374700; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nvowh36G+KcB2cVUdTY42GJw7Z7o+Itk+//u437cGqI=;
        b=TE3c6ZiAY0JLdl1QD++qC1MtMrARKIbBG0WRMk+I5nkbEO7eP4Nrd+tm/ZpLtsqy+j
         H0apDvPemcLGW0kMQCp5wJLmDx/uskMhl3uRa17RtDAxI4GqAosG1T8khEiY2YH2ezGA
         t00lQwz7pTpzwMYObRABdxmi3tdqiu7+gCrOrIw4m7gFwptu8RimSZy3zOGsfDJNDKgr
         3aJDJ+Bnk7Hb/9hO9djw+y2Zwmdzz741WYIo7pTlkK2+xOZUNjAgvYslQFgZHBJc33gO
         GHo7hDT6F3Oyf5bM6lwkR9ggDb7QmZhLTKjR15mAbNq2FOVIK5O2Ibyt4ONqduEarQ1u
         /9fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773769900; x=1774374700;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nvowh36G+KcB2cVUdTY42GJw7Z7o+Itk+//u437cGqI=;
        b=HMKQalP10JT2umZNQNCBf5c+BkrFyzvyVOFEjG1lPOm8KdSoUFWK57fntqzK/dJmmd
         tvwnH/eGm+gooCeFIuBrM1YoZDJzr2w18jNxuQZvmwxZKJghnvobrfw6MdgwfB+O4oty
         zP+p0n/1RM/rR5cFQF+Yq7gNsNLCQRncCNrlGSgJLVR1mT1xqhn1ZH3WUpGtpBnDMExI
         Kx+PGgUxgulCKMSSY5RBcmaD6Dsaf0abyo1qdXQFkjZaD0uTaPDF/IE0WthB8J9ilvwF
         6sNGMU+ng20ea/5vNwhk65vGyQJEQYUriN+tHUsQQhQAWYQxa+J9CZPOE2AHuIdoZ7tV
         IDIQ==
X-Forwarded-Encrypted: i=1; AJvYcCVhBlUHQr9m52pdq1/rHtZ0pZXy9JUaHsqGhRGxZuOHvaZ1mujgFwmLYWRrcUR4DT0/uH5Fk+FxtUYv@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0/LPvrWg9Pp9qFWOnAjWSY08+PhDhoWQ9IZWyEQZsipEi1fCI
	CX3WgAAEjxN/Evt/h0Jy13H2dCi1yqYoTftmwD792HBTxrgkJ+67s7FxNp2/kKPAThWNZTzAcVo
	sr8/oW387DR3t92l88tIrJlAPKhTjl3mfYYSq5ySb22SR/T/GQnodRELorZWE5gfH
X-Gm-Gg: ATEYQzzbNmwm0bWC1KC/L+3+q3m3g43li8ZIFs8EwvHxZB9SKkVbRT4mBBiYtGWV+Z1
	tthkxS/2RAud8CmCdOUq7PlLqfxMIv0iwbdMU1DW8oXdg5HBWZPcMqpL9i+Fv64z8FfVz2Xa+Aj
	W661EY3PskTjJ8brPlaOFGEOLmwTOPXD8qO1An4rFg7oBf7NVoi/mZgVxx/tC8HGlUCHOtYG8GB
	Llo2XImTmvSeeL6A174Hrd5XftTlIw2OFYoVtpYUs3K/vHcFyo2WeJN+QYemEckbXEeG0bIlBmy
	QSHLkpdHIrDn3pUcO7h1a30OEGoyjFMBmAd/ruP2nn3X5c/LYd7CsY+9zb/pjoq8Ggu7RQtfmun
	E5XI8Bgu9PjMR+tydkCp1tVBX0uTCspKf63o6k8qmQzqsfxpj+kTFs3BGOo8p0+LjaTl2vgIdM5
	1AyFuxe3GHuM/iDOSfBZv5YhGieCJJ+7Yigr4=
X-Received: by 2002:a05:620a:4590:b0:8b2:e6b1:a9a6 with SMTP id af79cd13be357-8cfad217d3dmr66110285a.17.1773769900015;
        Tue, 17 Mar 2026 10:51:40 -0700 (PDT)
X-Received: by 2002:a05:620a:4590:b0:8b2:e6b1:a9a6 with SMTP id af79cd13be357-8cfad217d3dmr66105685a.17.1773769899339;
        Tue, 17 Mar 2026 10:51:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a279c7415asm20015e87.56.2026.03.17.10.51.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Mar 2026 10:51:38 -0700 (PDT)
Date: Tue, 17 Mar 2026 19:51:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        prahlad.valluru@oss.qualcomm.com
Subject: Re: [PATCH 2/2] arm64: defconfig: Enable Lontium LT8713sx driver
Message-ID: <gg5q3cke2asq47vlnek3b3qyqu6kzn43qjhwko7k4gks474rbt@sf5icldil2ci>
References: <20260317-lt8713sx_dt_for_next-v1-0-8195fa931ff1@oss.qualcomm.com>
 <20260317-lt8713sx_dt_for_next-v1-2-8195fa931ff1@oss.qualcomm.com>
 <56829589-1c56-4c96-a9de-505058467867@kernel.org>
 <ablZcxUIJDrrs9Vb@hu-vishsain-blr.qualcomm.com>
 <ba22ae2a-06d4-41c3-920a-f1fd589a2111@kernel.org>
 <ablj7R79VjE5Kb2s@hu-vishsain-blr.qualcomm.com>
 <260c3c17-0d90-4253-84b2-5d53ae4ca975@kernel.org>
 <ablw7hS8OyvlQ/IF@hu-vishsain-blr.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ablw7hS8OyvlQ/IF@hu-vishsain-blr.qualcomm.com>
X-Proofpoint-ORIG-GUID: pGi0tT7oLfng0R18WEhm5Cm4PnwzX86R
X-Proofpoint-GUID: pGi0tT7oLfng0R18WEhm5Cm4PnwzX86R
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE3MDE1NiBTYWx0ZWRfX8q0iUAjI5nXP
 KWg/Yu32QSJLMmIQk2KKX5oGcXpseqGFt0uwGKWTV1XAvB4PjLRwW3d2Frd7kXMAHJL+X2JIx7r
 uZjiypo4sb0hUyNN9zRNmUaMi7f5JvfZWbQp9O1gBmqHHPoMSZLWGsLchYXBCjl7ebCM8VCTNRK
 O6mP+jSPZY3/5bATxIieTuMXHEBAgkKzUXfKh9WEzsD/VUk1M8oqP+DqaWAztI/6UWfXxHEr7Xn
 u5OBENhMLQdb1Q5Odzn8SvoO8WB9lxKpDBcBUqwhUuT9JLpwFhpFsHfRhJODFRAbtTYjjESpOtt
 81Z+iCWE+VH6TCB2I2WjzL2zxMGKViJnPe4scWK1DEi6ZpRNZuXMmOTQZJqnLgKNRUj8RpjtHie
 9VcwvunbHGKB/pJeO7G8GDE0RQOmx1warLbSLmdG0sw3nqi0eYRK+EuPVWczAdDq8beh+j47Gx+
 x7mDhXufZjKmNYwUGMA==
X-Authority-Analysis: v=2.4 cv=Y8n1cxeN c=1 sm=1 tr=0 ts=69b994ad cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=fMubUjeo7bVX2tjpqiwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-17_04,2026-03-17_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 bulkscore=0 impostorscore=0 phishscore=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603170156
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276802-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 3C3702B0406
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue, Mar 17, 2026 at 08:49:10PM +0530, Vishnu Saini wrote:
> On Tue, Mar 17, 2026 at 03:40:54PM +0100, Krzysztof Kozlowski wrote:
> > On 17/03/2026 15:23, Vishnu Saini wrote:
> > > On Tue, Mar 17, 2026 at 02:49:56PM +0100, Krzysztof Kozlowski wrote:
> > >> On 17/03/2026 14:38, Vishnu Saini wrote:
> > >>> On Tue, Mar 17, 2026 at 12:44:05PM +0100, Krzysztof Kozlowski wrote:
> > >>>> On 17/03/2026 07:03, Vishnu Saini wrote:
> > >>>>> Lontium LT8713sx DP bridge hub can be found on a Qualcomm
> > >>>>> Monaco EVK board for converting 1 DP to 3 DP outputs.
> > >>>>>
> > >>>>> Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> > >>>>> ---
> > >>>>>  arch/arm64/configs/defconfig | 1 +
> > >>>>>  1 file changed, 1 insertion(+)
> > >>>>>
> > >>>>> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> > >>>>> index 1d967a81b82a..c8f89c87672b 100644
> > >>>>> --- a/arch/arm64/configs/defconfig
> > >>>>> +++ b/arch/arm64/configs/defconfig
> > >>>>> @@ -1002,6 +1002,7 @@ CONFIG_DRM_PANEL_VISIONOX_VTDR6130=m
> > >>>>>  CONFIG_DRM_DISPLAY_CONNECTOR=m
> > >>>>>  CONFIG_DRM_FSL_LDB=m
> > >>>>>  CONFIG_DRM_ITE_IT6263=m
> > >>>>> +CONFIG_DRM_LONTIUM_LT8713SX=m
> > >>>>
> > >>>> Wrongly placed, at least at next I am checking now. Look at Kconfig or
> > >>>> just run savedefconfig.
> > >>>
> > >>> Cross checked this few rescent changes were added configs in same file.
> > >>> verified added config is present in generated .config file and lt8713sx driver is compiled with it.
> > >>> Let me know if need to add this config is another file or at different place.
> > >>
> > >> So did you run `make savedefconfig`? If you do not understand review
> > >> then at least follow what I asked for...
> > > Yes, 'make savedefconfig' executed as below, sorry i did not mention about this earlier.
> > > make savedefconfig
> > 
> > And? What is the point of savedefconfig?
> This generate a minimal defconfig containing only non‑default options.
> A defconfig file is generated in my root dir, CONFIG_DRM_LONTIUM_LT8713SX is part of this generated defconfig.
> shall i update arch/arm64/configs/defconfig with generated defconfig and verify ?

In which place is the config entry present in defconfig and is it the
same as the one in your patch? That was the question that Krzysztof
asked in the first email, which you seem to ignore.

-- 
With best wishes
Dmitry

