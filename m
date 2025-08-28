Return-Path: <devicetree+bounces-210006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 346EDB39DCC
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 14:52:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 09F14189BD43
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 12:52:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A8BE30FC19;
	Thu, 28 Aug 2025 12:51:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZrFl0OVk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B63EF30FC01
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756385517; cv=none; b=FWk2YAOICjeloGrORc1wnkQ9UL7HauJAjgUyz+zw/BDQF9LyWR4E1G5azC1TCZpOAEqjGfIDaxD86BBvXTGJdOZzZ9Vn83vSPfle2TIBg/yprOUDWrNfMacW598PsuDBcs01Uex/Q+9aOWT5UCAE4E4iHl3vzZAzbB9GIXX6XdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756385517; c=relaxed/simple;
	bh=30RLXcuUYS+F776KRSr+f2kg4UTgxAoSOBii6IDX+yw=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=TCcS0lix1JcKkPZCTleLBUdoXWRRmIdpya+BEOyyiibhmCYbxBnw12Qk4bVYin2v/gyIwTLTJmJFd9YnXhaJK0KvcTPJ6QVhup0SlP33Z0uQCOzOKKAmCONBIpz4rBrjYzGfPLtFBccnL0zFAHmoxiHRFb8ZuQgHnT0V8PGpENI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZrFl0OVk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57S5kfMx030104
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:51:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Tfd9haVIEplY3fZh8UFTDF44fFE4kBR445IEmKqTe9U=; b=ZrFl0OVkLaHoo7aQ
	7+aD+VZtRnu8N817LDxDuYkmmvpgecjqD3xjzeXK8zxdrHtVhKhBBV3HtAq2C7m6
	BvaDagOQfMowtCAlbn9Vq5j8o24PzP+nAKknsqYmOcAi1jfAqaDqNJTiWctNk4yE
	0DTDyTdCZzYLKHWR3MfS9+k+73aj+WcGWE7t62qPPi5mNr01q6XEBGXiPK5tncW0
	k5mRIP0JtYijbDoUVh5Svjk/Oqw3pyysNmtFnnqwLXRuV6VlrRe3BLKiZ/j1THsc
	CZk58IodJhZ0KzW0rdnc6GQ0VhDI6UJCR0fxoa9kJ8MqRMCaM7Ly23MhAnzDPT+M
	RH0/hA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5up02ru-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 12:51:54 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70ddd80d02fso11561716d6.1
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 05:51:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756385514; x=1756990314;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tfd9haVIEplY3fZh8UFTDF44fFE4kBR445IEmKqTe9U=;
        b=erXqVKYuMf2P5V8ncswYbWv6fYxuTb4jtaVXXoikoMz4vunureiuLOHIfCc0IvoRlv
         q+YuYUocDiBVr08QSXv6tSJ1BUdkKLw5mQCUbnwoMXQ6MFI3WOCF6kHn8At5EddGFdVR
         Oq4/pNr6CqcnErtmUqQsV2TC4yv4yeIfdFEz/wFkKmWvJ4c2xgd0Mb5OwjNIb28et1mk
         NF01g7gussdbt9g3dD+LDHzhfk62XdPgrDHXxATZgJOLRgQEate3O7/CbwBjI8foaq46
         eT6b9HsIxT4ZXes2smn5GisrgJfvlsmqZSYr1ggZzjkHVMyI2TMWShVoDKGVusvLQLnw
         klLA==
X-Forwarded-Encrypted: i=1; AJvYcCWkUWui8ywmSFrg8iRWODk0fU2SzfBFLFn3/nqOUN5po2Uj2ZMh/VfZ7VcGtT/McQwoEH7gGf6v5gq1@vger.kernel.org
X-Gm-Message-State: AOJu0Ywc9CmgeRexhxYRC/EC99TkiNHRRrSIadcv9IcGu3J2zm6PdppR
	6xktsQIZxZ4JbeF87wydtW1iwch/6aN5TOpAgofl6S3YBurjexMhnYqtcpnAT8kbjYcqEcKWFqy
	4vSfL1UtvgxHoXB9sXjB7cSLz2p3nmqzOb+rIt/aUXDAtKPuPsQJQ+RnWNC4jfNvT
X-Gm-Gg: ASbGncvD/sEl8WJSbfYbQY2A4tpExlAdSVDU0x6wjA7uaOXUUhrwfLvKAgp2Ktccqyv
	VXToi/qTEj7j1SEHQ2eunW/ZMqAQjqQB90REbeZE9BQz+3uGIG6cynDj8NHpZpPu0xrTln3x45u
	9LOQiqNQQlSA7gbL5aeHfuNbQVhi4NcAqOMCXERn2dKqeqFIl1OE2yMT0oqLWxM3sfA9ZRPUpS8
	TA2zGCodtVW2KkEMg+3nI+5WkKeBONbBCMriu2fkEej/ZkSskeTgGk14nAHPEhBXmF/8jpD3g0B
	NC2nz3H1btq+T+iwvnR8kKHYS4pOoC/4K8e/I2nuL0DG8ZG7Qbf7CrPt9bKqVanGn/w/f0CxOdp
	HRb335Mi2Q5rsxLmwnEaygz9BTtKBNy7iXh2T440VeSyoL0itxvmA
X-Received: by 2002:a05:6214:4e84:b0:70d:cb0a:51a4 with SMTP id 6a1803df08f44-70dcb0a5584mr139047726d6.67.1756385513698;
        Thu, 28 Aug 2025 05:51:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFmlfk41J1Q4Xm0qZ0A0YrWOLqz/9Wocie0W7tu8ccOHfhHHejewxQGjgn8RGDCYKRuo/fz6Q==
X-Received: by 2002:a05:6214:4e84:b0:70d:cb0a:51a4 with SMTP id 6a1803df08f44-70dcb0a5584mr139047336d6.67.1756385512930;
        Thu, 28 Aug 2025 05:51:52 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f35bffafcsm3316070e87.17.2025.08.28.05.51.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Aug 2025 05:51:52 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: heiko@sntech.de, Andy Yan <andyshrk@163.com>
Cc: hjc@rock-chips.com, mripard@kernel.org, naoki@radxa.com, stephen@radxa.com,
        cristian.ciocaltea@collabora.com, neil.armstrong@linaro.org,
        Laurent.pinchart@ideasonboard.com, yubing.zhang@rock-chips.com,
        krzk+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
        robh@kernel.org, sebastian.reichel@collabora.com,
        Andy Yan <andy.yan@rock-chips.com>
In-Reply-To: <20250822063959.692098-1-andyshrk@163.com>
References: <20250822063959.692098-1-andyshrk@163.com>
Subject: Re: (subset) [PATCH v7 00/10] Add support for RK3588 DisplayPort
 Controller
Message-Id: <175638551173.1202.7687103827759188815.b4-ty@oss.qualcomm.com>
Date: Thu, 28 Aug 2025 15:51:51 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2
X-Proofpoint-GUID: SgAt_GL23ygmzU32p6N7EClLSLMpAs0O
X-Proofpoint-ORIG-GUID: SgAt_GL23ygmzU32p6N7EClLSLMpAs0O
X-Authority-Analysis: v=2.4 cv=JJo7s9Kb c=1 sm=1 tr=0 ts=68b050ea cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=s8YR1HE3AAAA:8 a=td1j7nzBk3E7ehaXNNAA:9 a=QEXdDO2ut3YA:10
 a=0lgtpPvCYYIA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMSBTYWx0ZWRfX802GMelwpyDh
 E+ImwmEfHHuIjcg0fK1IiAJgdUJmkTZr4obteXbNym3+TWvYOcjSOKe8Km6oScJN3AAzEZwvdmA
 E6ESvymxn3I1kVpO7FykhgKplaB069xFo7tGOV1ljLmPP25ZpoXj603pcN0f9iny37KzmJOtpWK
 vAT/OOp7pQG60bXVPh/DjEzTFJEkAqvDx/RfqwyGdQ7/g+SUrv18SB/yFw/sqjlsS5HNPYT8wJu
 ixY38FKSq1vVrEBOgf18I3z61YbtbeCdbS6ac118tFZFXZHS5GR1ujXwfwNOsr9KQqHF6wJPqGv
 eVTooBC+gCDdiSaR/+ZSFWixNeqg/Dv0JO0FYdXeiZlwNUj777lGbyAJ9VgENWSkjFMzqulJknR
 JxjmriUD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 bulkscore=0 spamscore=0 impostorscore=0
 malwarescore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230031

On Fri, 22 Aug 2025 14:39:44 +0800, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> 
> There are two DW DPTX based DisplayPort Controller on rk3588 which
> are compliant with the DisplayPort Specification Version 1.4 with
> the following features:
> 
> [...]

Applied to drm-misc-next, thanks!

[01/10] dt-bindings: display: rockchip: Add schema for RK3588 DPTX Controller
        commit: 2b036b13c8c2cadf7a27036f911ec99742504fce
[02/10] drm/bridge: synopsys: Add DW DPTX Controller support library
        commit: 86eecc3a9c2e06462f6a273fcd24150b6da787de
[03/10] drm/rockchip: Add RK3588 DPTX output support
        commit: d68ba7bac9555d05e2f5b310c898b2a5c7eff174
[04/10] MAINTAINERS: Add entry for DW DPTX Controller bridge
        commit: 0b6da6d3a8d5391ff9da2358ac5afd8b7badd943

Best regards,
-- 
With best wishes
Dmitry



