Return-Path: <devicetree+bounces-189923-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C2005AE9D6E
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 14:27:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7CB837B1E0A
	for <lists+devicetree@lfdr.de>; Thu, 26 Jun 2025 12:25:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52C87267721;
	Thu, 26 Jun 2025 12:27:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IYfEs+yY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE713238140
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 12:27:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750940833; cv=none; b=OYiHUWkCldbD1yPqrr/w2sHl0p8d+BKvBl12i1Qm8N8EWjarLsGA1ykpoOeXpHtZHDWrVyYUdsI3wGJory0tDzdtjelRq76n+pGwAWaSOpJgcdTkAMhZ1ovepp+L9wz5p/GDA1wA2X+1p3dYwW+na4XyCDo6l5UaRYNdhdId6/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750940833; c=relaxed/simple;
	bh=OeUXM4PnAiSmHZwptWygkH9IPNf5qkAr4wW1Y9Ro3/4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F6vMbYHm2H0soZEbWK/r/jsBH2UKwXE6uyhzCUvk5ora69sM+3I7WmzMnyVptOl/Rrol6PzpIYVvCB6FTk29UMaG5bgspV6GYs8mzVFamjFW2U99TROwKi9XayCkHKY6Ed0vuBtu0Yn4M/eQXiM+zExlYXri4ZpLTRHF7fETsG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IYfEs+yY; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55Q9Dn7C019207
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 12:27:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Z4ld+nvIY43lmGSOTvBqUnW1
	/Skj+9qjlyioayiU/uk=; b=IYfEs+yY474NZPBK6U6Z+R0Ufasg731pkB7bfpur
	VRPpgLw4daMNjA/w1BJMQ+4thwDrYuwyTndkvabJuU/I6DI9GdqpoRL/720IRoYU
	U/LpC9Any/aINvhjlU/PyizpjJNx/YNhQS2U2M5/hjExJEHUIZk17LqquDS8nP92
	/NUyE1ChzmaXJSRu7B5xDGCc2SEHODUyEf0o4JKPXFYbkHHVstyfxPHZdlYOoX52
	OZ3PM7MHqJE//7VWcAlnqzT4p8wmjW1DC5EmseuBfbfUf8Dfx27lOExjkV4egRSA
	0UK7bc29uU/2XeBdiXREcs2bdJVWpr9KOLZuB7p6YayAmg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ec26djt9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 12:27:10 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d40f335529so300433785a.0
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 05:27:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750940829; x=1751545629;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z4ld+nvIY43lmGSOTvBqUnW1/Skj+9qjlyioayiU/uk=;
        b=ZzMtgMyHF3QudON5yy0bhDMiR6Fgin81B6WZJP6Pbpzz07ZXiUm7atK9PRmuwycxH0
         VcKv0Ptv1oyRYBAQiUedjWVqGMWBjeprhkSAT04pnbJdksnGd6l8D6jSoNJd5iKwFUIT
         8l0D6I55FKj1DCNIZ5p2ugvPoeC1QAOdj5Fm6WfApJuyCjMzSLCD7tGATNdrGf7L2cSR
         TySLuwqwC8LiabZd6TdMdwl53WanW0s1MsTOciJYMfYsfJsdB0EhTELLxHoonvYWy5II
         v9njDhQtM3+orfgG1BuOuqHichd9cCJ8aStL93ikYtPMMjFH7qqVpRb95F9b6+tduV2v
         gEHQ==
X-Forwarded-Encrypted: i=1; AJvYcCWr+Sz163KbuJzz17VSt1usrc/89s7PYMJOzOq2OLPGD0bFjlFELnb+RaDcfRL25I59anvrwMtiTL+t@vger.kernel.org
X-Gm-Message-State: AOJu0YxmMIg/m7KF5i/lQvUV6tUw/7cSmbsdpHkNOENrC2ISL7xw6kkQ
	W1aCxq5X/+cYzPH8TWZnGN9NfCXhswOPYmt+F+J2yms4jKd11R8yizdXK81N1gYI4Hbq31ohOKu
	htqFgqATWgwhA4a57CaPANqTsFXgS8gxkFIBmszoU16rvankhr34DnmZxcfA9Lj9g
X-Gm-Gg: ASbGncuAfBZf2r/Pj0Z66PTmlouzsdrK3KnoG2E9boegI8WNt7mVkh35wFnTGyRpHEv
	di2J0zAvsTDVSDyZOaqFpk5IWI9EpCMtxH2HbfqvDSt8n+sD6GjZuKp4wBkmnqoZb7CA7JiiDzh
	7Uk77SCHhfUThMVMzbA+YFcPwTENlSvnjWuKFpto5UJfGL2iEgXXumuHG14AaNtFqvyj3lchDyN
	3cEaUzaUH68GLRQ/bLqYT/MC4x2Bn5vlhyBwBmoXIL26ZhWcbTLknxlR5CbmJtM22BAWefyaCGI
	e7BEv7EyKoZhhu1ycdkExevv9aec8izslVZLUVO95dK/lfCWyzARCM+SqJv9SsJyBQN/3PLm6Q2
	kQj/v5AbLJSzrlIG1qaufrtz3LJDXnt75gkw=
X-Received: by 2002:a05:620a:4593:b0:7d3:ed4d:812e with SMTP id af79cd13be357-7d43bb920famr497281885a.9.1750940829355;
        Thu, 26 Jun 2025 05:27:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFP9tZg/2hbx2W8BI5QOCq/2uHaNR/sHZ4rDZWc3hvxSUiXPr+NjfiZoQeQMqAZk5rWU6PG6g==
X-Received: by 2002:a05:620a:4593:b0:7d3:ed4d:812e with SMTP id af79cd13be357-7d43bb920famr497275985a.9.1750940828667;
        Thu, 26 Jun 2025 05:27:08 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32cd2f00aa6sm2006921fa.99.2025.06.26.05.27.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 05:27:07 -0700 (PDT)
Date: Thu, 26 Jun 2025 15:27:06 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: cros-qcom-dts-watchers@chromium.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_kuiw@quicinc.com,
        ekansh.gupta@oss.qualcomm.com, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: sc7280: Add memory region for
 audiopd
Message-ID: <bch5jprookxuenjejuwlgvueigaporjgdd7h7ny2a7rb2fnsh5@lateboeubkun>
References: <20250626092952.847393-1-quic_lxu5@quicinc.com>
 <20250626092952.847393-2-quic_lxu5@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250626092952.847393-2-quic_lxu5@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI2MDEwNSBTYWx0ZWRfX5INiPFJJYRQt
 zsB+8mjKLRpGJKVgnv4/wGrkb+MUfLuxJOOv7lqmT0L10lGukc7BgSHCs7S23JTaZLR1hMUuPt3
 wRo23u2jTmhGD3yxr3tevfgp6oLGNb1/s9+TgzJTxqxfDaJLwgH3XM482cokEcSqQpBMG+Bn/DH
 Zxt8XusxiJqgRGDDOEtyDBn/miHYrnwxLoB5HSokLTfbIQ3a9kCy4jyQmmEpCnqr0v872KBPmWY
 Df3hulj9Zk19r4dwfnK1ZuCE0RFkeSsr/iWg1p8jH6d4j8PyNn/YUjVJS16nUNSM0whKxuLSVAo
 h4c/58GNfhj9oHATPyQNa4FgocXaHaqqGoH+5UpXc57CM38ZHskPowsJSyzMRLLQSq3hD79vm35
 /5VEMHG862vkz2923N79t6U1Ve2R+Qcqm6Vddd/lcxEvd6r54ZnRb3TjOiDj0BWSIovFXCsr
X-Authority-Analysis: v=2.4 cv=XPQwSRhE c=1 sm=1 tr=0 ts=685d3c9e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=y0QActD64cBbDUrEtRIA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: D589AUbadXgJFhdpPmVjBdSqSynyJxEz
X-Proofpoint-ORIG-GUID: D589AUbadXgJFhdpPmVjBdSqSynyJxEz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-26_05,2025-06-26_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 clxscore=1015 suspectscore=0 mlxscore=0
 spamscore=0 phishscore=0 malwarescore=0 mlxlogscore=549 bulkscore=0
 priorityscore=1501 adultscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506260105

On Thu, Jun 26, 2025 at 02:59:51PM +0530, Ling Xu wrote:
> Add reserved memory region and VMIDs for audio PD dynamic loading and
> remote heap memory requirements.

Please specify whether this is required for a standard audio playback /
capture or for some extended usecases.

> 
> Co-developed-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> Signed-off-by: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sc7280.dtsi | 11 +++++++++++
>  1 file changed, 11 insertions(+)
> 

-- 
With best wishes
Dmitry

