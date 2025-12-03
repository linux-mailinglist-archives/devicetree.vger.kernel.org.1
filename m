Return-Path: <devicetree+bounces-243935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7546CC9E8DF
	for <lists+devicetree@lfdr.de>; Wed, 03 Dec 2025 10:44:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 399533A8E95
	for <lists+devicetree@lfdr.de>; Wed,  3 Dec 2025 09:44:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0367E2E9EB1;
	Wed,  3 Dec 2025 09:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="ogAM4yQM"
X-Original-To: devicetree@vger.kernel.org
Received: from out-188.mta0.migadu.com (out-188.mta0.migadu.com [91.218.175.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1956B2E090B
	for <devicetree@vger.kernel.org>; Wed,  3 Dec 2025 09:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.188
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764754961; cv=none; b=gnlSiF8iSdFi2tKfZehBhllnGyuETnHJB76Po9RrctOfpF7t/+DJzg+QUJeR+vuzS7NB3WxWTEZfC6oWDUlvXfQa6IgNazFscxAuKmQNV7LVB/CqiLH7qIhVgzCPMAyuj8qe/pmTqP7m7i04o7MmZP580FD1JwTwKXuSoYydXT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764754961; c=relaxed/simple;
	bh=w9wAmXNQBoFL+R5i19c+vkdpO3F1VlOpIMjdaeoCUQ0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Ho1Apu+rKpbBace6If0G/P8DjNjw3RiCpeDds+GhRYx3eNE6XjgzYl1ISGiE5NNUAcfKuzbZiC6RG6gb/hdnOf1SFmIK/dxcxdZKqq12L15BDyKdyXpve9F0f1e9wzJ5/sXm8yhHLn9jEngbkOAySvBfkAnK5Ior/gAUf+gyt3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=ogAM4yQM; arc=none smtp.client-ip=91.218.175.188
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1764754957;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Yf+HMlo/PPR6xRo0J6aM6RXFkNHmNADNXzzOlE0Rqfs=;
	b=ogAM4yQM8JaN0MGDp6ZUDUVwM22MOmsYwqF0bO+GXFMz2lzCjwtaRLFZ1il+H/Q5atPHa8
	XBoatUZ4iYVpe7TqyXevFvPlz4UA0bPIF5oMvZU7kjoLLuazrBpCT4YGQik7g47PmzHS+l
	BFHf1eInZaxFl/MsJ4CkYJFCHfsSd4FbgfTc2nGxL39XbwKi+GV/BjrkvCQ2PJPRb0S3m6
	ETH8TcbZf8vQkaJRkKiiS+UmbJPAXtRN3MQTvh6mH6/yGrQeANfDrZxhDoxnJwI63yMBvr
	gNAO+Vyk/gEsCpYeVV+ucZ4T8cZ0tjJdfDt0VUUJNEAYGb+B0lQda2jxOBpTcg==
From: Paul Sajna <sajattack@postmarketos.org>
Date: Wed, 03 Dec 2025 01:40:57 -0800
Subject: [PATCH v5 08/12] arm64: dts: qcom: sdm845-lg-common: Add
 chassis-type
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251203-judyln-dts-v5-8-80c1ffca8487@postmarketos.org>
References: <20251203-judyln-dts-v5-0-80c1ffca8487@postmarketos.org>
In-Reply-To: <20251203-judyln-dts-v5-0-80c1ffca8487@postmarketos.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, Amir Dahan <system64fumo@tuta.io>, 
 Christopher Brown <crispybrown@gmail.com>, 
 Paul Sajna <sajattack@postmarketos.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764754921; l=770;
 i=sajattack@postmarketos.org; s=20250422; h=from:subject:message-id;
 bh=w9wAmXNQBoFL+R5i19c+vkdpO3F1VlOpIMjdaeoCUQ0=;
 b=JEMV71+Ro6xGEQUP8ubKY7bVwbkHgDOGAPer/y5O3zm4r+4k7SpqHIfCqHcY2o8qyAPzSwPbC
 5f7NBaVvBOHBJ0nD55MKWDzPXRNgI72R1+LbjJQYxjV1aK+LKk3ExcX
X-Developer-Key: i=sajattack@postmarketos.org; a=ed25519;
 pk=TwacvEOiRJ2P2oAdEqIDrtQTL18QS4FfcHfP/zNsxkQ=
X-Migadu-Flow: FLOW_OUT

The sdm845-lg devices are all phones, therefore handset chassis

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
---
 arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
index f12e785db893..93b9a0246510 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
@@ -28,6 +28,8 @@
 /delete-node/ &wlan_msa_mem;
 
 / {
+	chassis-type = "handset";
+
 	aliases {
 		serial0 = &uart9;
 		serial1 = &uart6;

-- 
2.52.0


