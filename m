Return-Path: <devicetree+bounces-199429-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A6FB10A05
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 14:23:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 564151CE5C57
	for <lists+devicetree@lfdr.de>; Thu, 24 Jul 2025 12:24:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60EF82D12E4;
	Thu, 24 Jul 2025 12:23:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nj2cDDvR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D932E36E3
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753359830; cv=none; b=kTjBZRHNxtEx5g5WUhYDARUVDB7a1xmM9l4cph8RvaFBvOWPreMqIhDl0Q2fIZzhgkreI3q7qtCAZYHzrAZ4u6JjfrNqFa64LI6IxJfp9Xv2F/3Arhij7GXLfcpt7T1WOzgRDa23OWR6VeAnlsFBBznKJamxNIvBStdOEnfJX/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753359830; c=relaxed/simple;
	bh=9UZAF+VjyntapLkvzyxf7dSdNiZLx+dA1nAB7juaalg=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Z7RYdIM+3/JowMFNQpvJ0ubkXdp3GHaurdKrPi0SPhVezLmVAJ5cp5ZKxnqDv3m2DJaQT5xSpJVgHBjIaRCeEbagFEtcxsuLFrk8nzIaNGe5Gj4eWnPk8gPgrnvzpSwz+wXK8lQsaByOB5taE6FVnaGI1toCjb5t2UixmkeA6oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nj2cDDvR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56OAF3AS006839
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:23:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=b4iOzUz2/tX9kzCgb+rby2
	EwINJ3HgWXsX897B2Yu3g=; b=nj2cDDvRAR4Bj/fL+/gzuXvMonHZdWmbChRwEd
	C7e8Qagmvhx6bivXy8fUeDx09ukctOf38TK3arotrJO1rPXtAWhkW5JUNYSR42mQ
	tT+Ms5AhkQirFIUsrNnG1es6kHOVpowQndMfEN7wNvnkcWqYQWyYyixxKhASOXl6
	qVjPw0k81BZk+8DlCQoAE76ZH4xDoS+POv25+NkF90bslubi9EdeBZAahKv7LWTs
	gySLpAFDOuZsJUya0pCfHLSD6QGEbgMoue9d8iE7AvarqExTvYmeyQw3eCTZI4MA
	cerkFobDBUIMF1g/j0K3ISwR03mO4t8D3FxCOt8AyzXXOVQg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481qh6ttex-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 12:23:47 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7048088a6fdso16141166d6.1
        for <devicetree@vger.kernel.org>; Thu, 24 Jul 2025 05:23:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753359827; x=1753964627;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=b4iOzUz2/tX9kzCgb+rby2EwINJ3HgWXsX897B2Yu3g=;
        b=qUxk2Zg5r/wNNemZ9wMdb/D3IGAbo/QuO7QiFbUOv8VJyYP6/CKoxeGdI8qbKywpT6
         MRy/KTk5mcNkt61X4FWcHL+YTbU5aoWsT/Bx3YClQ7a8BUwlBLf2HUIBxPXPEWOYEc5p
         S07LhAs7+r8cxPBZOSM8G95kJqTt4g6W6RFFrJWboIoFCdDN/WxDmsge8vCvEM94OWgT
         CDD064U6TWOXddfJFqP5K5BVy1FBd5NwWzNRAOd4tcMkZTSrnkbtsTrs4CEjEy5jdhl5
         k9cncoIkP05vRMh7Fa/d+s4A4FSBYd6uwG0PEcJVKtu9i31KbONFiieced0gQP+EIuRk
         Dc/Q==
X-Forwarded-Encrypted: i=1; AJvYcCXuazeDHhl6nwG82pM50sC7pNi/J3FniYK/sBtSx9ejwecYY9kQk5L5NjpcJgK5dliYTkTd4UsOWKhj@vger.kernel.org
X-Gm-Message-State: AOJu0Yxx7irPExen3nMynC+imxudmNOgwVlfbxHfVxeOp68etvHn9HXv
	e62vMzHO6PNGDbv+cnsrChY24YRAJsABNyf7irizxHSusVSCDnYTvAPwCCF/YpEJBgcYqTVlq/n
	DctIFW8t1uy+Fr54QakOcMwDLrDk5HhWovL2cZ+pqy8ewRStiz5Hg5daSvZQDAtCt
X-Gm-Gg: ASbGncsgrSsb0cheslFSOHk6hQLA4gC+8Zbhv3LPviLjDLznztlolvtYg6dcrdNuhzR
	zn2k9IQGdQzUUnIRJVsBAdWmbpmWqnbile8Y5RVyh7IJHtnFWcu2fQ157fWINdCwEmTAyRdx7aY
	wKQNmytrTCNig59uY5i9TiYKOtNI4L4gGjC79QJyfTh9+fanOfVIR1hwDSQ1NWsYmIDlXJrQM7P
	g34xjkzvP5HK2ODz2U/Vtris21FdVpoY1xnc9bqPvyu757EUnL00abTDhcRVnGtF8T7ZxcCgXKy
	FVGnfl+0W6x5KlBSW/NKzMTqOZuLH0kV3KYALTO1oJWFm6S6dB52dPb4YL4Ir+qWHnamv+fgxOX
	kASa7O+NHnLTWTdKQY0u1zwpgqsyyG0ursOuJwtyO7APVkTDFvvAd
X-Received: by 2002:ad4:5f06:0:b0:704:f7cb:dd25 with SMTP id 6a1803df08f44-7070057ba17mr109236356d6.21.1753359826556;
        Thu, 24 Jul 2025 05:23:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/XcSHqN/o0Ithkvxygetwn6YY6eoeEZiW7raINoXA4AhP4DqSY8tP24TXWSS6o0cReAw6gQ==
X-Received: by 2002:ad4:5f06:0:b0:704:f7cb:dd25 with SMTP id 6a1803df08f44-7070057ba17mr109235506d6.21.1753359825861;
        Thu, 24 Jul 2025 05:23:45 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b53c83978sm327389e87.126.2025.07.24.05.23.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 05:23:45 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH 0/5] arm64: dts: qcom: add empty eDP endpoints to the SoC
 DTSI files
Date: Thu, 24 Jul 2025 15:23:38 +0300
Message-Id: <20250724-move-edp-endpoints-v1-0-6ca569812838@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMslgmgC/x3MMQqAMAxG4atIZgNaFMGriEMwv5rBtrQignh3i
 +M3vPdQRjJkGquHEi7LFnxBW1e07OI3sGkxucb1zeA6PsIFhkaG1xjMn5lXUSwqoiotlTAmrHb
 /02l+3w+orxYKZAAAAA==
X-Change-ID: 20250724-move-edp-endpoints-fadecdaadda1
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2222;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=9UZAF+VjyntapLkvzyxf7dSdNiZLx+dA1nAB7juaalg=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBogiXOJK3WuSemBhJl8dxqP228S31Vu9YuVz7Qv
 bw6L+4zgXuJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaIIlzgAKCRCLPIo+Aiko
 1RNPCACCgdwWbeUlKjDs2S6eBZ/vvFVMZUek7iXOPpL81le1Qdohbug4ztVL73O9jGSLjPgHSWc
 0cU3Zs7zKeD8JvjaDc/EGdqUYBIzLBgo9Za+sUUbEu5wV/GMhZD4/tZcU+f8tPAOxBSCHy+mPy4
 sTNrmlwj8I+hoAGffn5ivbtbIpBTdr2sG8J7xWWfXHmt6sFI3FtZ8rVt3XqXg45aMOq4y58D8ca
 9JqPqYO9tF3Wo9UUCZnb5VGwv4C45dyz83rGizQN7+dmYiXIi9KPnnbdF5llSgoK6LK4RdLoJe5
 N6J7raC3mzP5bDjIH6FDSebO7BGCXKg9yZaX76/5KY010EyD
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Authority-Analysis: v=2.4 cv=CZ4I5Krl c=1 sm=1 tr=0 ts=688225d3 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=D2Q8LXYmFiaJ4L2kWqsA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-ORIG-GUID: SKxD_IsqXRCjdLEYkf9wdFfeGDWumMo-
X-Proofpoint-GUID: SKxD_IsqXRCjdLEYkf9wdFfeGDWumMo-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI0MDA5MyBTYWx0ZWRfX8omLkQci7Jdn
 nhcg/3V5k7qiPGct2ypUFGIxmN+q6APWhjsY9mEXCcaYMxUvBPA3jeIJMnd0kOnEHUMBp/c+DxW
 ED8GZt4Bf3w4EL6kj2wD1wdAk9i/r/5j8wRM+s63V6Wk3G37A/dLdUs+quZ2W+KiGgtV+s7vX3f
 /Un7mefN+9KjHvO05RxcMZLyuPkX3ubiq2zUr2Ozw76iQvYmIBM+1HxaGn/AtK81dj9kUuteon9
 1y1Yjd2uU9eT2wQpoD7di5IL+r+zeToA3VCzOpbS/PN06m3rbUXG7mny/FB6PBGdyG38z+tZ6uJ
 sOfqcOLZmOL/2sg7OlCEgmJ/z7qPTP8h6u9ovYbtMRxYEptdIZJ4ufnbHjf9ZfebIBhwLEGlOQ9
 e0QUs1GUYYqctY8tCnhak2hofZkV+M8vx202KFQS2/MQb3qbNojhvz4ypYGgtPWrfD6NEmiV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-24_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 mlxlogscore=999 impostorscore=0
 clxscore=1015 mlxscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 bulkscore=0 spamscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507240093

Follow the example of other DP controllers and also eDP controller on
SC7280 and add missing mdss*_dp*_out endpoint declaration to the SoC
DTSI. This slightly reduces the boilerplate in the platform DT files and
also reduces the difference between DP and eDP controllers.

While we are at it, also clean up remaining data-lanes and supplies
leftovers.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
Dmitry Baryshkov (5):
      arm64: dts: qcom: sc8180x: add empty mdss_edp_out endpoint
      arm64: dts: qcom: sc8280xp: add empty mdss*_dp*_out endpoints
      arm64: dts: qcom: x1e80100: add empty mdss_dp3_out endpoint
      arm64: dts: qcom: move data-lanes to the DP-out endpoint
      arm64: dts: qcom: sc7180-acer-aspire1: drop deprecated DP supplies

 arch/arm64/boot/dts/qcom/sa8295p-adp.dts           | 96 +++++++---------------
 arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts   |  6 +-
 .../arm64/boot/dts/qcom/sc8180x-lenovo-flex-5g.dts | 14 +---
 arch/arm64/boot/dts/qcom/sc8180x-primus.dts        | 14 +---
 arch/arm64/boot/dts/qcom/sc8180x.dtsi              |  7 ++
 arch/arm64/boot/dts/qcom/sc8280xp-crd.dts          | 11 +--
 .../dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts     | 11 +--
 .../boot/dts/qcom/sc8280xp-microsoft-blackrock.dts | 13 +--
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi             | 18 ++++
 arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi  | 16 ++--
 arch/arm64/boot/dts/qcom/x1-crd.dtsi               | 15 ++--
 .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 16 ++--
 .../boot/dts/qcom/x1e80100-asus-vivobook-s15.dts   | 16 ++--
 .../boot/dts/qcom/x1e80100-dell-xps13-9345.dts     | 16 ++--
 .../boot/dts/qcom/x1e80100-hp-omnibook-x14.dts     | 16 ++--
 .../boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts  | 16 ++--
 .../boot/dts/qcom/x1e80100-microsoft-romulus.dtsi  | 16 ++--
 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts          | 15 ++--
 arch/arm64/boot/dts/qcom/x1e80100.dtsi             |  3 +
 19 files changed, 122 insertions(+), 213 deletions(-)
---
base-commit: a933d3dc1968fcfb0ab72879ec304b1971ed1b9a
change-id: 20250724-move-edp-endpoints-fadecdaadda1

Best regards,
-- 
With best wishes
Dmitry


