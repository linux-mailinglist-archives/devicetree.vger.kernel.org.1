Return-Path: <devicetree+bounces-238728-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A5770C5DA61
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 15:43:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 87C4335EAA0
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 14:29:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 708D5329C5D;
	Fri, 14 Nov 2025 14:26:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AkZ16XO/";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AVuuQ8Ru"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C11C4328B78
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:26:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763130411; cv=none; b=mIe+7AueHAUShE+PeywvkkOR7NAU9l+PLaJDgWSYBV38+bFopcwqiFSgNN0xRq1ZjYq4lwKJTwimOCjcouwKGgSn2lDu50DfBWrik5hVOCqhNEk/Le2NAOZDCIMv1f55euoev0vK6YtbyEwi+Qr1JpM7/a9QfZoCXsVnHhSMmZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763130411; c=relaxed/simple;
	bh=APbu4kUl+EzUqxhyJinb9KqGhNl2InlhqeqtdGImEHo=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=ZqOLJ7IDow3Qlfkeh/p65aLA0m20ndccFYIBo2kS3GIGtPrGjG6lwauF8YkKK9g8PjK/6DvuKhiORhTD9b1rdSzS/6qO6KrvTBLW1WkOWrsebp0iLIve00qOKshZDmDybVasIWNryqF6l26Iofd+R/HrQwxldqDL64hQxZJPkGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AkZ16XO/; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AVuuQ8Ru; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AE8GiLs1497489
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:26:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	G52IQeprFzU/RViBvcTb3gUefzNosEjB48PU17kZOnk=; b=AkZ16XO/WeRB6wzl
	Wck8EnWVUMErhHhBVaTtMhfqXUDsg/ndHF6jIr+xpy+ovvdwiRi8jdCLcT+fcQwp
	0uLoXD0gYtlri5mQjBDqKxHi6ZHA9smLWSAoiPXLhFMynX5LizwChEMKf6bzaCoy
	MTF0sj8ThkPUNhO47xLF7sBZ6hLBZTcGZCsEtD6ccdbMpqFjTk9MbKXvB2eP9gI0
	rUM/gBrFVXX/47FUtd3OJG2nlhsBvLtrfbMlgkVHYx1Z+jPn6vkPr5QwFpwsvI0L
	a+y7HLcgM5D9RgzuJhJ/1WTbAdyWeYvg/UAiMZ8230RzvZ/Jo+anUSke5MuD8fLg
	uQ7Sxg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9htea7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:26:48 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e884663b25so50242571cf.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 06:26:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763130408; x=1763735208; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G52IQeprFzU/RViBvcTb3gUefzNosEjB48PU17kZOnk=;
        b=AVuuQ8Ru88Z+ZbfgHQPRF4cQDTwNH91aMoHIDpY5Auk5PJ0Zu2DgrnFje3H2VZItJc
         Qmdi+bDXAyHrjf5qfDyVRwE+UXBHhRX6ZzMoSZOmMBDhpg0qgDR1ZxwvYiRMUfB65L9T
         2dEoO9ZxKaSYZXdFN/TxNl/mpV6OjHnuEicpkeBuoAiz47IuCHLUlLu5QJjXsWpTRjCG
         PCOszPp7YJ+jjtfwEh6PbCyhcYjzyPyUH/PWGbYYYiypnx9QxTOs9yCOGe84B1SqNKGq
         sivjbnermYxE2snHXIJfYEpCydaEXo36PdOaXk+elACg3w31aN1x/pQ42jommZvniGMK
         oQTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763130408; x=1763735208;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=G52IQeprFzU/RViBvcTb3gUefzNosEjB48PU17kZOnk=;
        b=g5+RYwM2d4DxZnMKbeo6ht3TrI50TEaI7tZbX3J3VvfEsc0DwjOlziCxuKLPFVD2PB
         3dkzVPukDS5TxR+iS1OL2vzXEJWZn2Xs5JX5fws+2aFuFxYkhK1wVcLBbjmOKv5rx+3h
         uLyKUsNMdc0OzUNG50u7dYrLpIEp6D9LDwGGclP1X+0v9WutCXbbknC9yFoiXY6P27yr
         0Kwo2LdezLMqb0vS20hVQvZiJ+MXRmI4tKLhbqy1Jz75AfJeL0Pg35x4xv7F6GFE1Jc8
         M6qb6EPtazaL8rnI0L1cK7kgngQ58sm3ssAhTbLQsWcC7BwXaDHo1tTR+HJ7ENd564fh
         i9KA==
X-Forwarded-Encrypted: i=1; AJvYcCXp1Kr3Zo0gEBH82gL5mCgFMZ8zJ142436lfpQIhqV3MgcTz8cdtWmvGDMNKkJ2USplFw++Dz8m/qSC@vger.kernel.org
X-Gm-Message-State: AOJu0YyqC7YXBOTM7WxaYZp5j8M1AEhTJm0EJoxaV+mnAUdF+mkZB0Lz
	oxXR3QaUUpevMp59DAe+NQXbRLszRzH/TP/fX/z3ll5KKXch9dEJIwLqtH3KfL9nED/4PdRd+DW
	vuG03xS14Py2k7xBueRNyW6LEcKkyVTTMg6qsc88KNZua0MVX5Rh9hPX47pACBp8D
X-Gm-Gg: ASbGnctAgB98HyD+IbOkiqW01fQX/D0w4Liaq9X8tO0k0D9wjmnwe+eUj2rYgGfgleV
	ZPTevJ4bPcB0p/6QI9hJJxEsyjHEpFHWuhi5bmIyESu/2uifbMmVGtQX9X4nlHBw5169kj/d4Sd
	WV+A4MYrg9w0H7DzVTJOJ7CUhkBRUmduJlGr38d9UxUynEjK+6OVE19o6Ir6NVpA/yQJs3cT0Sd
	UdSVt1qjJCS7M4uXwW0QbkvvCiTU4CFSGml7yZpVQ9mubLo7lYh19vCKB6qoJF3pA1GOzixWiov
	e+EjkOxo/eFrMuJhUuaoc149771TqS0+EhpiqiumkpJaJyVO9FlSNg83liVKVaInEkXOCtjcjX5
	tLumWfbdTfqwthd72TlOMw+4wsLONrQkE1lv6Y9IaCk1X19bztHwJFGUjPxJDvxTcXUSNbXWo4V
	YOYPFzCtk6FmeZ
X-Received: by 2002:ac8:5e0f:0:b0:4b2:9cdc:6d52 with SMTP id d75a77b69052e-4edf217896fmr49714461cf.71.1763130408088;
        Fri, 14 Nov 2025 06:26:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGwWp5aRHUEqmSsEDhgFAkvcm5lAcwhOsRY9giHZOk5pt805Ch7PaXZwR9iDf4LZA8XwoSLKA==
X-Received: by 2002:ac8:5e0f:0:b0:4b2:9cdc:6d52 with SMTP id d75a77b69052e-4edf217896fmr49713981cf.71.1763130407606;
        Fri, 14 Nov 2025 06:26:47 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37b9cee0cabsm10318821fa.40.2025.11.14.06.26.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Nov 2025 06:26:46 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v13 0/5] Display enablement changes for Qualcomm QCS8300 platform
Date: Fri, 14 Nov 2025 16:26:37 +0200
Message-ID: <176312947283.1737000.17850758513197921959.b4-ty@oss.qualcomm.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251029-qcs8300_mdss-v13-0-e8c8c4f82da2@oss.qualcomm.com>
References: <20251029-qcs8300_mdss-v13-0-e8c8c4f82da2@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: Ybt8D_jPCkq5vHL-Ncylsq33MNZtrWv1
X-Proofpoint-ORIG-GUID: Ybt8D_jPCkq5vHL-Ncylsq33MNZtrWv1
X-Authority-Analysis: v=2.4 cv=N+Qk1m9B c=1 sm=1 tr=0 ts=69173c28 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=e5mUnYsNAAAA:8 a=2BC_VhOQHQuvYBtrr_oA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDExNiBTYWx0ZWRfX1uB3Yl7E3QXX
 ZBoquyYzB8DW/LNtrTe55YeSydkLt4s5uzbOem1RWh2rALmtFpi3K77cxfFY6odofMfi2uV0CyB
 AiZXhEn8lrt0QeNWHuzcvhvILpJPLeX5+zbAPBH3KmCiMkbbA29BHQ2GX65bOPATUZhjsSMLoRK
 Xp2ZY6lbjDs1yfKbtbSNPgaTqXidiUi+sQLZsASj+0tTlkCRIHJkJ9J1h6sm9pxFCYND+lof70G
 sgSrDU7U/KENrAjU1ih9QaBW2mj/6XZ6X3uvh31Ay3RrfDQ47CZwvub6ezLxk2My58Dm6z1yMRM
 DDBGJY1LkpmR44WDWwF7n2v0Ra/xRQmJ+J5eNSue338wQyHaiSz44naLEhDbzVDb6K0rYgFaL0Z
 utvGWEdJtSzPlneXa8KIijrUsaongw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_04,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 spamscore=0 suspectscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 bulkscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140116

On Wed, 29 Oct 2025 16:51:33 +0800, Yongxing Mou wrote:
> This series introduces support to enable the Mobile Display Subsystem (MDSS)
> , Display Processing Unit (DPU), DisplayPort controller for the Qualcomm
> QCS8300 target. It includes the addition of the hardware catalog, compatible
> string, and their YAML bindings.
> 
> 

Applied to msm-next, thanks!

[1/5] dt-bindings: display/msm: Document the DPU for QCS8300
      https://gitlab.freedesktop.org/lumag/msm/-/commit/0e9cff574436
[2/5] dt-bindings: display/msm: dp-controller: document QCS8300 compatible
      https://gitlab.freedesktop.org/lumag/msm/-/commit/8a6c62490d77
[3/5] dt-bindings: display/msm: Document MDSS on QCS8300
      https://gitlab.freedesktop.org/lumag/msm/-/commit/b420fbfdd62b
[4/5] soc: qcom: ubwc: Add QCS8300 UBWC cfg
      (no commit info)
[5/5] drm/msm: mdss: Add QCS8300 support
      https://gitlab.freedesktop.org/lumag/msm/-/commit/628fa5529762

Best regards,
-- 
With best wishes
Dmitry



