Return-Path: <devicetree+bounces-249596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 00098CDD1DF
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 23:32:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 56E3B3011ED4
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 22:32:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42CD8220F2D;
	Wed, 24 Dec 2025 22:32:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PAW8iMZh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Z5cBbO8p"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9AA8433A0
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 22:32:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766615551; cv=none; b=sc165ldhj1w5iP2YytuuPi2yCpXJgWqk0oxPIWTEeAcM8CVqRWDV86YknrzyAEiT8i9vu+gpAV9+uVL9W8IGU+yrQ/A7/rdORM7OttKPbhB44vkbOkVeWF799AiJiEDaBt5ZWJO4FADLjl1Vp3kEbMmQ4UzqsKj0JMSC7+wQ4xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766615551; c=relaxed/simple;
	bh=tf4NsQgVUH9oky7GkmgaNj4BE1JA8pn+YBvRbD2GHvc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=rqq56U5ZPSEIpe+S+4g5RXrWhQqJThc7hU6kysBts8bEIg97C55EN3K7yYmHTEot+sZdQS7uhowZ0WXB9WHnmrYzwp1pQJsvJFr13KqiG+MP3ncgaNcJ5yiJiNFye35o3zpy/DB5PBEGjx/hCIb6tD8lxU3IKlN1vtyAhswMSLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PAW8iMZh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Z5cBbO8p; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BOMFhCZ4169713
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 22:32:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	L0jPL7mGfIp00qPtZgEa30xxEWpNpT/MXZqO5NVIGKE=; b=PAW8iMZhAX/qVe6S
	UZgFEPbjtgKTrQorh+dhGw1pFjpabn/8S4IKfwAtLujfsLqTSAyiUrHtn5j8+VqM
	LtNq0BBIiBQGDej1WXSlw5O8oydvzuIpQnB+xZ6GUT4E1ZvXjMgddjQ5+IEJ7xGr
	us1fhP3HqW1WsME56PdNBM9i4mENErpHJqSLoi4I3JW6FN1pWFsnA5SsynOi9++p
	KnwCNVLn0Isv4Ozv4uEtlJitSTxSzIzW4BqsmE+iNRzvS/t6DLLwDEqGBIXi1CnT
	Ax6TNsiXP2QkVLdVSVWitkF9AEPeZloze+rTXspo9Alb+xymMxTubvBfN4G3WCmg
	Ytt/3g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7yvq3n97-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 22:32:28 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4f1d2aa793fso161532571cf.3
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 14:32:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766615548; x=1767220348; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L0jPL7mGfIp00qPtZgEa30xxEWpNpT/MXZqO5NVIGKE=;
        b=Z5cBbO8pBNlDfYHDiaFdXxKWYsPSxSjV5bb38BPDHgz5csrE/shjJVrERdgAYJ4i3u
         8bzEl+A8bsD1LMIPZ6MLbwdMxhpRG+ae8Y3VBYD0/XSXM5zqfWbTlcsNCr47MYscd0Lz
         V8q4csF6ODcB3s2jR1xSfwaSPQx00/MsS0if8o7JvYUb2EuV86bzTmeHHjRgOkXNgKsj
         Avawo4TU8Ljm0psf2XIYrAGTZk1Y4OC6g8zlfsYllWfyIQ9ZPlTQQrwXAbq6U0gaNLN/
         XSksPAtgb1T9rDCPq5KqmIbZXCmptokawhQ1T0eK59qSr8e8dHy7RIwswjiEID6AGOgv
         LTpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766615548; x=1767220348;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=L0jPL7mGfIp00qPtZgEa30xxEWpNpT/MXZqO5NVIGKE=;
        b=d9SCPmvxtUPAFLvBE0M21Hv67pY7tVZ8IgeZfYTL3JfnOYhyfnzxxHRlMRsh7B2Ys7
         tbJpha83PaDJpNdVjs+qlboIrT0mXvLssIKtB1Zz2IQjY7zTIGlMmKMfZ8gkrW/2YPN2
         vyBoIVPWCNhZdtkORivaM5csYfGL6Ah4JbMkZFzzSYYqdGtw4I90retEIjPonPT5a3pD
         2vkYSkqZXm+y9Rq29cKIH+JJDwTBkPF8aS8rKd25N/APogC1KoQo4LVXoLP0QqqPSNOi
         j7sG6u8tFltbtX4A2Bx2klamcMRvnMnTDKGvRvZuLNtPMeYPgJM0gQF7cXt2iXpV7HnZ
         0H3A==
X-Forwarded-Encrypted: i=1; AJvYcCV7GGzC4d/PdUAmzPuiTVhruyjLgoN8/GWhlViEamPfMFLogKMk9CaKXWZS8fzA0YNqmDwhaActorp1@vger.kernel.org
X-Gm-Message-State: AOJu0YzPZAka7xHWbdqy3fizaF9dpbGjRppr8Wh6SFp2bq4veqbcx2MZ
	wiMMCEc47ur8p7tWpawKLn9VRm3YkX+9BjZ3Cz9/hl2Jol2jUgXt9rWF5aPyHcTlyhlMJ+g3Gc/
	IupN8wYEAi25RmlPDC+swBqvVx7ZhVTLjcF8U08tGudXmlWNlTbH1GhwVFeJCYZvx
X-Gm-Gg: AY/fxX5PvNW2LtizLtRcILKv6SqHPto6wQVyEhuO4+JSU6vu48hIE+hiby7p/fSIhhR
	tMgFvd4znwpH9Rd+ijvtxFGisbiTIZnG1ThqjlisKO2p+n+RGgHqJU5Kn7wJL8q8EO8jNDbAc8B
	xaCG+h0BASsBcSH3R/C1Nw4gKNj3czvHeP/0uvVfOS8eOtleqAf2RnfPIkVxICDjEc1xM2FD2om
	s2745pXFlbmuBfZ4/E6T4TIffl7JI0ZFSKlaWMbQgJNhSFcMUdVT4Ha9yUVpsNIjI7VuFntSvb6
	RHhMEZEnULytp99lEu4JI9JwfgFd230eQFU6KqqHFr/gLEQuG10MrvaruhXBn/CqfRKakU7ckGd
	SB4TGFtAsRqDNXCt4fEdHX74Du5lD5zcDWyVL8lDSXACLl2945aJttZkW+fW9jy4LmElpq3Fs9J
	wHNS10S22O0dBm5ytmmm0hSfg=
X-Received: by 2002:a05:622a:1b92:b0:4ec:eecf:66fc with SMTP id d75a77b69052e-4f4abd799ccmr273103991cf.51.1766615547913;
        Wed, 24 Dec 2025 14:32:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG19rNmv0We3MFkyk6sQSUrSfINXHL2KxbCfoVrSCCgav+j8dPUIqzPwOReGX6y0l9q4HhyGA==
X-Received: by 2002:a05:622a:1b92:b0:4ec:eecf:66fc with SMTP id d75a77b69052e-4f4abd799ccmr273103711cf.51.1766615547520;
        Wed, 24 Dec 2025 14:32:27 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38122693ad3sm42746951fa.49.2025.12.24.14.32.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 14:32:25 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: heiko@sntech.de, Andy Yan <andyshrk@163.com>
Cc: mripard@kernel.org, neil.armstrong@linaro.org, andrzej.hajda@intel.com,
        jernej.skrabec@gmail.com, jonas@kwiboo.se,
        Laurent.pinchart@ideasonboard.com, maarten.lankhorst@linux.intel.com,
        rfoss@kernel.org, simona@ffwll.ch, tzimmermann@suse.de,
        knaerzche@gmail.com, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20251016083843.76675-1-andyshrk@163.com>
References: <20251016083843.76675-1-andyshrk@163.com>
Subject: Re: [PATCH v8 0/2] Convert inno hdmi to drm bridge
Message-Id: <176661554529.2411515.14933651749352627609.b4-ty@oss.qualcomm.com>
Date: Thu, 25 Dec 2025 00:32:25 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-Proofpoint-ORIG-GUID: 5jRBjDcwG901p5CbUMTny4SQpZGFlqBW
X-Authority-Analysis: v=2.4 cv=abZsXBot c=1 sm=1 tr=0 ts=694c69fd cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=Byx-y9mGAAAA:8 a=nruGSBBzdhYNc4dVb74A:9 a=QEXdDO2ut3YA:10
 a=0lgtpPvCYYIA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: 5jRBjDcwG901p5CbUMTny4SQpZGFlqBW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDIwMyBTYWx0ZWRfX9eoQJDQN6nnH
 NJJGg+qnhJEzG13qO5jfQA9wXjVuVtDoUjyktnAK6haNQJXUnTxJSRAJNRHQPykm6CHBCD9G3lu
 dhEiy0Fps+qjnXoSr82tJyQ7k39RaoCRka+mtdbrNhf7Lkbyfnyr580VhAiJzfUWC6RjUujcDQ9
 hpedxw2MkGxJSnlCWtym1mSXXRPvbajpdOJCLHMd/SIvUlHwETegBCcxPSGnayI7+QsyoUQJMtt
 RiieE2v1CE9f1likiddDimAHDcwotmzKfeYgZ2lGI5AmG1bj+Mdztn0fcRAW6ahk4/elbs6ziJF
 huSrJioVLUHUUl31JpeIP6EPSIzyOGDcwDZl6Ni6vf85tDAgNeKU7+y7oK1AO+Lxs45jhvzk5EX
 ZRdbWnvxPq17eT+8AU6EavYB8s8Q7ZOUiRLKJ+MQ7cIm+rlSL8EqzGAgwSMgzEfEyic1vCpGgXj
 2Pms8GTPU4NQ8g3Sc+w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_04,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0 spamscore=0
 clxscore=1015 malwarescore=0 phishscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240203

On Thu, 16 Oct 2025 16:38:30 +0800, Andy Yan wrote:
> Convert it to drm bridge driver, it will be convenient for us to
> migrate the connector part to the display driver later.
> 
> Patches that have already been merged in drm-misc-next are dropped.
> 
> 
> Changes in v8:
> - Rebase on latest drm-misc-next tag: drm-misc-fixes-2025-10-09
> - Link to v7: https://lore.kernel.org/linux-rockchip/20250903110825.776807-1-andyshrk@163.com/
> 
> [...]

Applied to drm-misc-next, thanks!

[1/2] drm/rockchip: inno-hdmi: Convert to drm bridge
      commit: 969325a2597ebc4cb001a92992f06f698ab2b467
[2/2] MAINTAINERS: Add entry for Innosilicon hdmi bridge library
      commit: 130343ee6bca9895c47d314467db7dd3dcc8bc35

Best regards,
-- 
With best wishes
Dmitry



