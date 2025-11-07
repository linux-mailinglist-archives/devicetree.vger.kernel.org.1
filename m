Return-Path: <devicetree+bounces-236138-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C59AEC4032B
	for <lists+devicetree@lfdr.de>; Fri, 07 Nov 2025 14:53:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4B5B5188A941
	for <lists+devicetree@lfdr.de>; Fri,  7 Nov 2025 13:53:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9271830ACF8;
	Fri,  7 Nov 2025 13:53:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aZkupkSb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Kw6Rpx8n"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5F02D063A
	for <devicetree@vger.kernel.org>; Fri,  7 Nov 2025 13:53:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762523587; cv=none; b=UTJS9qQ5f7K0GULRJflXKkDbmcTfhz6e+RW26XFpjWdAatvIeJMNcSUIpEGvsFzbEN7MVFrFBQQOVj+vSoL6Cx/zAuRl4MwgnzL2ZCDl9sQrG2mAoE5tny7hFsNKUOUwZznnBml7kAfvGnv/7x4FKASw6U5HdwZYlbjPAmzhu4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762523587; c=relaxed/simple;
	bh=cAbflNaU1jJlHuDwNHN5CyfiHqVWUEWBVibq6fQD71c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SWt6cUvYyQypsLrMZCtUImUk5MJukHJEX8ZmEeqXWFwr2NyCtmAtR2cR7u02iozGOwAbZ0toUzrIhxgXHQWnZqzF63u7elpaxSYoS2kXAX7AgTJC16EbVfdfA7WFBG6Vt3YDzfuRkrKq1pzxv8NKDuk1cSmHLfv+AJlKbvfMGK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aZkupkSb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Kw6Rpx8n; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A7Bej912853439
	for <devicetree@vger.kernel.org>; Fri, 7 Nov 2025 13:53:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/VVmRg18NY3wj2ZYE0m3Jiqj
	XMFW7uHzd+kVJOSzKrY=; b=aZkupkSbWyTHdHRM8bQYeP9AqR0UZ0zH4tq3AtYE
	4Sdz0i9IJmA96W8xvTYSnFnbfMZksavsZWtm3bBtdBck0lO0+UhokJj5WDoL0SE6
	Ifb6YuqmuDEhlP2KcBMTm+7dTi84Q1rffRPYrc7uh6IHTXIAoVVx2MNk5BwuIMrz
	Lqu1VWiaIKCChJyQnj+E+W2qOwZYJepNfOuXOinKGF29s4BWRZSG725ISQ0q58C8
	Dg7QFWeY3or/EoTDoxByrSi0Ev079uXY3pZqbpQw4o+yS0CESAVVm//101Yv1jvI
	qohadK+9fXx1cFXWPGrt75E5p+Kid2UK1qVJzzP7vk1Vfw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9g3xra7s-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 13:53:04 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-78105c10afdso960980b3a.1
        for <devicetree@vger.kernel.org>; Fri, 07 Nov 2025 05:53:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762523583; x=1763128383; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/VVmRg18NY3wj2ZYE0m3JiqjXMFW7uHzd+kVJOSzKrY=;
        b=Kw6Rpx8nv96svZ9gWFyfBTM4gdO2sxcZzN5AYD+yH1UUV+qHdBZIddmR4e0Ly+ZrrR
         juK+0BTNRb2CxW3o7gNWHQ9sXZnfhPIWlKFq9j5iqlPWT4RW18wQ7VtGBkYHIjU2n4qT
         3AvLV5wPsJeVL3MVX60I4x/Pqkep5VKZPcGX2xOWUQWbRZQfwZLUMTEN30n3XSSvclaZ
         DC2d+O1Eqflnw10qHbX7tE3MaqGWF73mOv5MqS2lZWp7URe+cnzalM1wmuwczJRFXnSY
         R+muJZ7ILIVJk8OCkWh+3MGiSHzo4BeH5/mYANKu3B6PWR/1mTcdRQLd8HwOg7MhiKnM
         vxkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762523583; x=1763128383;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/VVmRg18NY3wj2ZYE0m3JiqjXMFW7uHzd+kVJOSzKrY=;
        b=uQTmXyQ69q7LxFk39BBij14iCpFTQh5fSzpnEU0SiSLU5HY7+qSP/9uerAESvPCW6J
         w3yizNW8Rb7RIQ7pOc/ju4VGSd1ElEecZs2iGMtyfxIPTTvnYad3Go127NaZrLHN15lt
         +Z994xPHRf098fLAMNHSN/4AixfoVxjfmLQYCFwx8NlrD2AOyVUxjOMyPf0oomcI05N0
         bf3ZsA0f3tBfoSEiATKYbxdKnZ5alyW0ytbtvgx+D9yzqJQc+NvzQHhZ9633YruZmSfB
         YvyhBmcFR9GV+7OIgX4Wh1TvlJMobDMZMtIJgDPiEx7j2KpMf0162SC/JYkstuB9UDJP
         1aEw==
X-Forwarded-Encrypted: i=1; AJvYcCWyIV0X/qwbIMankcVK4M9cxYepVdVNczEls3NwN1SNiM5EF++5kZDzsZk6fLNyHZF+LxZgX9j9DbJW@vger.kernel.org
X-Gm-Message-State: AOJu0Yw84gXkZGmCeKsiO6xaBrSXvMZqKy/YppQ8oQRBbN8Nnm3nF2+7
	poJ/aU5cDyzxDyjZ35/wMGGIhO3zMKptBZcWiIhZvRGEm2ZC7XmKtjpmKkf8VabMu/WIIth9Vzf
	wHf6/YkuqRlSNliyhBg/zqpvGcPIQhQvAdLOGXjoJVywWdmPwp0japJkpeSyHTpdB2ibc2Zc=
X-Gm-Gg: ASbGncu7Q5OVIs3ltFVj74S2050E8JBR+x6UCYp0fZ4/bakeA0bkCDP9q5UYuLOU6Cg
	F3I0Gb263ymx1/cT5tTjvtG3eVcnGPmFep1e5WHX1Qi12NxRXlP10YLJq7kGVMdRnUh0Z5FrBH0
	NQ+wwWdYoawJgb+WuXAqpa5ELH/X9IwskM8QaC/lN+EpSAL30q2hkFphZ79wNYI035q/KD/H7I1
	V5LmDZ0w2n7ACKxLyqPM28yfly/p1H9Zz1ex5EJ23t9rGm2X9r5DEtXhjCx3mE+wu8Qoojh51RJ
	clnYrmc09MmZXDTcVugwnM6628rx/odOthMUcuXYR1BhdjVg/U32EMo2Xr1dqnW9+f1Us/YZmSz
	NeyZUNuSgJLnIEZR1C6Gd/Z83
X-Received: by 2002:a05:6a00:3cd1:b0:7ab:6fdb:1d1f with SMTP id d2e1a72fcca58-7b0bdf66564mr4419013b3a.29.1762523583556;
        Fri, 07 Nov 2025 05:53:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH2KL3sD5hZ70NkXwEbmWRrK4jE3iJ9mGDdh1VUXj2/vuQfkmiiPTTaWojwx6gzMqeCFkjGnw==
X-Received: by 2002:a05:6a00:3cd1:b0:7ab:6fdb:1d1f with SMTP id d2e1a72fcca58-7b0bdf66564mr4418992b3a.29.1762523583018;
        Fri, 07 Nov 2025 05:53:03 -0800 (PST)
Received: from hu-nlaad-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7b0c953e2a4sm3160357b3a.6.2025.11.07.05.52.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Nov 2025 05:53:02 -0800 (PST)
Date: Fri, 7 Nov 2025 19:22:54 +0530
From: Nilesh Laad <nilesh.laad@oss.qualcomm.com>
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Marek Vasut <marex@denx.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, venkata.valluru@oss.qualcomm.com,
        jessica.zhang@oss.qualcomm.com, Yi Zhang <zhanyi@qti.qualcomm.com>,
        Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
Subject: Re: [PATCH v2 2/2] drm/bridge: add support for lontium lt9211c bridge
Message-ID: <aQ35tvwp90qm57Cl@hu-nlaad-hyd.qualcomm.com>
References: <20251107-add-lt9211c-bridge-v2-0-b0616e23407c@oss.qualcomm.com>
 <20251107-add-lt9211c-bridge-v2-2-b0616e23407c@oss.qualcomm.com>
 <30b5f19b-1ce9-4239-bf0a-d83d647608ce@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <30b5f19b-1ce9-4239-bf0a-d83d647608ce@mailbox.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA3MDExNCBTYWx0ZWRfXz0/9/lta9+Mk
 SCxQuOBT95XqNUjQy4aST0lExd5kWzRpIKEAuH1CKJmlOqFV6j7zqt5lb/1AItgaNKKVYJDdbI9
 9VIsXbOQlP2HldsTtlfg0MNFKfK9yZ4VwrFEdw887C3L4KNyzDpY89yaEPZFhRg+Fx2HsA159WB
 j72eNXNyhLb3wyIDEpCGJrLiBi9z5YzDpwhdhfQnJwpegsEaKPXOElfEMOMhII2OdLae680LBtr
 XZK5P+YKP8jJJJqEHpY9Ww0nBS4DERLSUfD7XvpWRdvwalpVXXQyvxBLRAcxGf3Ghz20g2akQeI
 Vh6jhufJoHWZlmWdoYMBs/hPVQrXqlS0q11aH+lSb3eLUBkySg/Uxm+OB0z2sThU/Z6vXzZAS9P
 Oal+sz3XVXWt4mak9TjLlA7Rvfz+BA==
X-Proofpoint-GUID: hXGlNLvMNFJtY7VV8kpwKRFgSEifxfZF
X-Proofpoint-ORIG-GUID: hXGlNLvMNFJtY7VV8kpwKRFgSEifxfZF
X-Authority-Analysis: v=2.4 cv=Q4TfIo2a c=1 sm=1 tr=0 ts=690df9c0 cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=kj9zAlcOel0A:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=zAaMOjnD8X0J8WzHdTwA:9
 a=CjuIK1q_8ugA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-07_03,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 malwarescore=0 clxscore=1015 lowpriorityscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511070114

On Fri, Nov 07, 2025 at 02:20:58PM +0100, Marek Vasut wrote:
> On 11/7/25 2:02 PM, Nilesh Laad wrote:
> > From: Yi Zhang <zhanyi@qti.qualcomm.com>
> > 
> > LT9211c is a Single/Dual-Link DSI/LVDS or Single DPI input to
> > Single-link/Dual-Link DSI/LVDS or Single DPI output bridge chip.
> > Add support for DSI to LVDS bridge configuration.
> How does this differ from existing drivers/gpu/drm/bridge/lontium-lt9211.c ?
> Can existing lt9211 driver be extended instead ? If not, why ? Details
> please ...
LT9211 and LT9211C differ completely in register programming sequences.
Even lontium mentioned that register configuration are different for lt9211 and lt9211c.
Nearly every function would require duplicated logic with if (chip_type) branching,
as register sequence are completely different.
Having both sequences in single file is not looking good, hence want to merge as separate driver.

