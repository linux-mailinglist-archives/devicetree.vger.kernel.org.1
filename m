Return-Path: <devicetree+bounces-253085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E4254D0728E
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 05:45:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 9D7803010BF0
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 04:45:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4484E27280F;
	Fri,  9 Jan 2026 04:45:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jLObp1ro"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7C9D2E1730
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 04:45:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767933907; cv=none; b=VF6Rgu4o5IQAL/wflawUdEjv4jyNQlPdnkPsVSJOHMeobhDXgHH2QE0JV9+Xq1wLJpYooPXIUwweSZAtYxMR9lNMDfCF5sy+08TqgjVhHlwZIud/KwkVRf5HqjvykH7QNmCx1xlviqImXPQ5ZYj6dBhcFnHe3GKPQYucq7Zdxu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767933907; c=relaxed/simple;
	bh=5QJq1c9Ekc1jzwnvdU3h8OoVmYxREZvgYI+XyP74jOU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=W4kNUJ1Rk7kt5s2l8TZi0eEWuYad6lMyXhFXjmKDSobxoRusQdn7JozCQSg60wA/c8MOROb2bM3/ic7Kr0hVtFLu4l5hXow+4U5DwSjA9BoyetYLjD5f39HZmfzbU7hTkKoySSA6hjnmBE3xbdAblMFAacmQLL6a5liUvtAo9Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jLObp1ro; arc=none smtp.client-ip=209.85.210.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f49.google.com with SMTP id 46e09a7af769-7c76d855ddbso1308949a34.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 20:45:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767933905; x=1768538705; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kJPG8HYsRBUMTKq3yYRj3COPO6PhtTiFs6OmvlSy5Iw=;
        b=jLObp1rosyFSFWGcp4LStakVAs894Y66aFHPDUGaFiLLqcG+3Vmn4tGcr0xRBN/0wQ
         hQor9i5Js8vmtzTx7zgpdQcX6D037h33hpChduVS2k6l0Fe/MtuC3f2Fs994zoPvdt1p
         B8DK9c+fW1N1j/lHzm7zx/r9+yCYseZ26WJQ8LrpEL3tNi07XaJrBqfxgUshTDwJ3l+F
         WXPNKE+IUbiCFE7UgbED81cdD4RYIu8XyfKYAbuTFqQu1XE9nrlJo7ljgR19yanwpgnh
         C9lCv/QgwI5iBlmeRT9VcVLxafkpeAb8cpCnZWQ/kgJ13IMWeBKDPTdL3WAmc7OZGgWF
         Rp8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767933905; x=1768538705;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=kJPG8HYsRBUMTKq3yYRj3COPO6PhtTiFs6OmvlSy5Iw=;
        b=ZCpbD0TPScxQxybr477ZHId5l/xpglHqFecdzVpkwqZGRgb3CcEJNdEAVlUlOgpDSG
         XiLV5DvnKIuGzRAvZY1RAQu2mHbsx4fqFh2XOR9V4I5LL+dIl2GRdBo8eN45+AEahNCr
         /5KSVSx/j8Zgbqf6Kuhuq4PihgIrO+4IukTMtpC1IgD81XULokLBqeIxdcUefTcli2ON
         ocJDWeh9ndiUlSQMtM2vUkqwcUBzQmUQQKf/5RR+qjOoHeQ37AfG08kqQXuEsfpO6PvE
         cK9RR50b8he89SILT+O3Mho4uN+CNnuOzAdZ69m+DdhBICNcUk2SStYPt9ib0vw7Yf/W
         OYWA==
X-Forwarded-Encrypted: i=1; AJvYcCX6OnehQ4i2PxW38O/5DfTC8X5anW+ojoNb3dBhnt3wNlEa0oCkfHTgbzl86oOjGIegJZxe6wMRA5fw@vger.kernel.org
X-Gm-Message-State: AOJu0Yw554T5IyY1CkaT5fC4HBZ6p5412my1Y4iw/xY/E1WBEJg25Ga0
	IFRc73cu+ncGYJuBkNSXqtPBJL+sleTKqf4FsFYZeBaN2yA833viO/Mn
X-Gm-Gg: AY/fxX6Y4CSGS7r2ShAW9bEJdbehT/ozIz/9scysC7db5LE5hfIGBPQg/DJVGMZd4nm
	MBscCOF7rt8iRo70Cl1+QErkHVJGL3WqNymuy0CZUDqiGaQhWBfjoCWvkEbanpaHDzS/ZUkqGWx
	IbWB8v9Zsyw6XM9mM5I0ohub3P3LX6mIqQhlyNB0dSp3NOIL2CrS/8cP4ibzKZ/6x2G6drY/CS2
	OK0Q498zmKWf19zoCLRAzFeoSrhpDL2mCzZ/aWJpYkwkW9pVgmwDzFfcb97JnpB2/4OVr/uOkcy
	P2VDWxfeuF9Bj1CGC/tZyIfhcWMiYaTIf3C+TRV8bxSjMQIXcqw25mWHjxSeqOFWg40Rb+T74Fe
	6TnE9NYHkN+RF7DlO8WfzW6yePw82ZgAeevPCmRtvcZJ7UfAIvrxg15Wk2pDA0/UvwLmfycQot0
	8TX1oiCPizaj+qEeRdE7TAw+22m5Z63LbsknGyLbWLG1bDOc/+qST5U+f/7ZR7kXE7IAFc6TkeZ
	Q9vJMX6NjNIQkpXEA3ioTSMTml5B4Wtwwmo9/k=
X-Google-Smtp-Source: AGHT+IE6wRQtca1hyce9+QhI7Rf2o0Jk0Cj8P2ShkldcfBNSsrVRhd9DNnZB/kaAAlL3WYBTPdAf/A==
X-Received: by 2002:a05:6830:2b26:b0:7ce:5287:494d with SMTP id 46e09a7af769-7ce52876fc2mr5062598a34.17.1767933904785;
        Thu, 08 Jan 2026 20:45:04 -0800 (PST)
Received: from nukework.lan (c-98-57-15-22.hsd1.tx.comcast.net. [98.57.15.22])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ce47802551sm6683515a34.1.2026.01.08.20.45.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jan 2026 20:45:03 -0800 (PST)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	jjohnson@kernel.org,
	ath11k@lists.infradead.org,
	Johannes Berg <johannes@sipsolutions.net>
Cc: linux-wireless@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Alexandru Gagniuc <mr.nuke.me@gmail.com>
Subject: [PATCH v2 1/2] dt: bindings: net: ath11k: add IPQ9574 compatible
Date: Thu,  8 Jan 2026 22:44:53 -0600
Message-ID: <20260109044457.3074510-2-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20260109044457.3074510-1-mr.nuke.me@gmail.com>
References: <20260109044457.3074510-1-mr.nuke.me@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add IPQ9574 device support for ath11k. The schema is identical to
ipq6018, so add the compatible string where needed.

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
---
Changes since v1:
 - place compatible strings after instead of before ipq8074
---
 .../devicetree/bindings/net/wireless/qcom,ath11k.yaml          | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k.yaml b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k.yaml
index c089677702cf..5efb2ce0a6be 100644
--- a/Documentation/devicetree/bindings/net/wireless/qcom,ath11k.yaml
+++ b/Documentation/devicetree/bindings/net/wireless/qcom,ath11k.yaml
@@ -18,6 +18,7 @@ properties:
   compatible:
     enum:
       - qcom,ipq8074-wifi
+      - qcom,ipq9574-wifi
       - qcom,ipq6018-wifi
       - qcom,wcn6750-wifi
       - qcom,ipq5018-wifi
@@ -103,6 +104,7 @@ allOf:
           contains:
             enum:
               - qcom,ipq8074-wifi
+              - qcom,ipq9574-wifi
               - qcom,ipq6018-wifi
     then:
       properties:
@@ -221,6 +223,7 @@ allOf:
           contains:
             enum:
               - qcom,ipq8074-wifi
+              - qcom,ipq9574-wifi
               - qcom,ipq6018-wifi
     then:
       required:
-- 
2.45.1


