Return-Path: <devicetree+bounces-245406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BDECB0832
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 17:10:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CEB3E30C44ED
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 16:08:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDF7A2F99A3;
	Tue,  9 Dec 2025 16:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="XeFyAEay"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478C82E54A1
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 16:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765296480; cv=none; b=lF1gU7tqd1oKXHmEDccqhmpIE753K3Xa50O4khaYXW7zmwxIqi3FY5H1odq5vbxU0+TJlH2SdIdoFLRcaElyEHZJEgSaEBHbIZg0997EmNTHXGKg31ohJnuGPq5eICwzgDIgz/npx0M2cL4mZREQz4pP2hWUoqrXAmk8aOtByms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765296480; c=relaxed/simple;
	bh=hqWwBhHzMRj5hwfTn5aYASYEmPTarkYL1NRE5PToWYk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=DACkLEIZNtB2/UccvFFvQu39w+rs8pS4DsD1cfI+nsEKrUUNDdzX7sOMTc+MHlODNYMoKLQrbwqe7c7r+1tdaI7ULCQl3brjHZgi8KsW1Fu0QQ4cFOd8GZMgLCaV3tMIdhhcYikvT/R2A+01sHnPsxuaC6ffFzKeOYCFoW9lWqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=XeFyAEay; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-7c6e9538945so4460609a34.1
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 08:07:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1765296478; x=1765901278; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XKj6TjXWTZ5bB9iE2X2t8qqfAGcSOjFrdzdLpXdZOaM=;
        b=XeFyAEayAVrrWBu5gcOQQghBGXrWxwVa5Qv9DPvSTBx1xu5W4R0wFVXzu3SF5u0wTT
         dhAZC/fHxiEHEdstYi78aIps8/YicEvq84SI13ViQrA41+nIfd0Lc8G7Uf6f+3lP7LEv
         gux7ZVrf3vVEq/zgaYs1TBRqJz4LTkZO2Kv4AY3kRGWh+9fC+bm8iGAzVUJp8wrG7MQl
         2uLV64aMld/AwkmL051gMUeiYnZCbeyS/uVg7e5n1ja2EitCnQB9muGYeEh0uu99EDb9
         ttZtk5+aukGxY7OR9yldn0tnY2OgGCXxvbiDIkpixXgamHysZ68+EOWJi3yCUmU/PI+A
         my8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765296478; x=1765901278;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XKj6TjXWTZ5bB9iE2X2t8qqfAGcSOjFrdzdLpXdZOaM=;
        b=u5NfRu28zroKTwOPiPCnOdYs4RzooiwAZePUHW1qWHJm/XPZFMWhQ8/z4pSseNy4wp
         ZsDTvAtUpK5edweIJ27e/Y63tpVUQPPhmZdnzleBAQvWoAcGjFZZyyi4iZOl/itHCi+j
         S3kMO46MVbGlJJncJl872qK5qljOYfdtl9XgnCuqmQK9arF3VDJmFzGEShXjnhF6riDB
         cxkFayBLuJnDT45tNH00Kk78xJCkV7IS3SKaUgQwHiXbt+aEnlBpAQTMEwB1JC/uVTTh
         WK907EI8ozvYhGWe6isG/NQmN9UlOPwHe09liT1v9O14sZ0Fb3lsDjOsc2UuXfAJ3zAq
         klRQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6e7nV7f7Jq2LCZ8Wm+dgW0y/roNlPedIo1mQ5A6NbNu11w9Em16JgeqOC3V8TSdVK7i/74+dIUijQ@vger.kernel.org
X-Gm-Message-State: AOJu0YwRNQvVitguZ+LUTsupirr7RD7eAvNiRoFC6fde8IuT8qe0a3G9
	kKGszIf22cltN20wqhGPn9WZfXDLYIAmJmdiiDyIQ0cM+zbs2i0TmhCo
X-Gm-Gg: ASbGnct4Z5i3c8D01OPUmEeW2EJFTFUwSBNCxabgxBh+cxt+o4X8RdwrjOMfvmjd9kH
	4nQEE7wkD+lvDDYysXO8cpYsrBMj+MwBFHe6GjZTTkTHIMHvd1vDJmUWzQWgt8W08zfualpfCp4
	ikGw86+ANJX2VG3YSa52tRnnE/SC1PBPDqJgj9ROe6FNSEj8jddCENYxj1McQHwG5xcHp2SSFEE
	hmuv08fLP30qlTmIB6bwoFnwphjxZ5dI8sBULpiraeG1z5gzo7mMOUFzdK9Gn6AOEmC46p0KAoO
	Sfjp3+qvTtxeDrxoYCFTcSq9UVtYG+Ayl1HkckXv7esHWP4ddbrQkzGmUf8KXjo0wpLlUkDAKkj
	NYsLnNuEx+EVMq3ab2u6DS7tSCs/5idTGAMIqN/26BLMLM8AzdCOSSwWsqCl4doTbBHR60fi1P+
	9tQDvZEqx4E6sBGaWg4Bw134iAwA3hTKp31KLX/gYwXVmDH9g/yFePnmGcFuL/NsgF9/GKta5l1
	ol8eycAElsJL6JW5/g/2pOj+5XY
X-Google-Smtp-Source: AGHT+IGzGFLxsahAPVM1StL2MRJ5UDyRvON40tKJhYDlFJEAxVeB0koKV0RbyMlIjsR58OXoi9/3eQ==
X-Received: by 2002:a05:6830:12cd:b0:7c6:cd8b:2e5c with SMTP id 46e09a7af769-7cac60b2bd8mr676260a34.18.1765296478273;
        Tue, 09 Dec 2025 08:07:58 -0800 (PST)
Received: from nukework.lan (c-98-57-15-22.hsd1.tx.comcast.net. [98.57.15.22])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c95acb3cf1sm12520518a34.20.2025.12.09.08.07.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 08:07:57 -0800 (PST)
From: Alexandru Gagniuc <mr.nuke.me@gmail.com>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Alexandru Gagniuc <mr.nuke.me@gmail.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: qcom: ipq9574: Use 'usb-phy' for node names
Date: Tue,  9 Dec 2025 10:07:54 -0600
Message-ID: <20251209160755.3878878-1-mr.nuke.me@gmail.com>
X-Mailer: git-send-email 2.45.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The devicetree spec allows node names of "usb-phy". So be more
specific for the USB PHYs, and name the nodes "usb-phy" instead of
just "phy".

Signed-off-by: Alexandru Gagniuc <mr.nuke.me@gmail.com>
---
 arch/arm64/boot/dts/qcom/ipq9574.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
index 86c9cb9fffc98..4b8cbf1ff131b 100644
--- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
+++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
@@ -702,7 +702,7 @@ qpic_nand: spi@79b0000 {
 			status = "disabled";
 		};
 
-		usb_0_qusbphy: phy@7b000 {
+		usb_0_qusbphy: usb-phy@7b000 {
 			compatible = "qcom,ipq9574-qusb2-phy";
 			reg = <0x0007b000 0x180>;
 			#phy-cells = <0>;
@@ -716,7 +716,7 @@ usb_0_qusbphy: phy@7b000 {
 			status = "disabled";
 		};
 
-		usb_0_qmpphy: phy@7d000 {
+		usb_0_qmpphy: usb-phy@7d000 {
 			compatible = "qcom,ipq9574-qmp-usb3-phy";
 			reg = <0x0007d000 0xa00>;
 			#phy-cells = <0>;
-- 
2.45.1


