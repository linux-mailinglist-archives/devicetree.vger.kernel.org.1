Return-Path: <devicetree+bounces-250123-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C8173CE6597
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 11:12:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A893E300AB18
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 10:12:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 173F72D061D;
	Mon, 29 Dec 2025 10:12:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ICuek0OH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BC22874E0
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 10:12:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767003156; cv=none; b=RCUSzqZ3CNf270D8vNNdqksr4Cxmav5IiAR9Irbm6yQ6oXsIwx7dbBsKN0VA3NmNKkf/RiL8uoEh33z+xglMAyx8WroOvNRtArPCTgPJCw8W7Q0CBp7FXrt4nCKRZiYo5BfSinGSU0bVPhnHPkbf0GXT/W+HfpkgU5uB+NQU9qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767003156; c=relaxed/simple;
	bh=lEQTmzdRwAX++jXf/eD/FxjZqYX/Y19qCP3LEYW2Tk0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VGDnk8EdM+dibs1zf9oXXwR9yyj9vLF5HdMElFhroH7fjP4246FPQqJjD5AM2VrhtaAxi0nlfzyfaC2CPtqFwmrKPMF1UwDOrjYTh3qzqQZ/GPBkHXNCjZwzzHd1DHpuKLNzfMSjdNsrbe0qbcG3E2CToB/ra/B2oFiRk2X3NJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ICuek0OH; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4779ce2a624so67893795e9.2
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 02:12:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767003153; x=1767607953; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zxHop4R1vebN5o3R54WdbAjnNPlb5TuWMLmhTQJH8Ls=;
        b=ICuek0OHcprInwMbMT+XV/77hXizxnauqrqGoFL/w12A0EEIHtvo8SDkEnRAPYD5s6
         GO+XjvRHhYk+0FyfLCLkZil1Gq03lydGE3RRo9xq4iqX/Tr2+5LJpJnqf/5Wmd3gZeN0
         b04arEXUw/jrlqSAEs2amRCoNGo7L+bwO8syOAxeTIYK5UQAvchB8UvApYJuMC+PbUSb
         HuCkWViFIQC5ZXL0lAX7KPYAuy8wCnYuil8xy7lxa752r+fUQ4SX5hVcKAhivvmRtb4X
         p5Xuh1tIA7w/Rzc7W+hwNPIFP7MlpGFAPc+05SCVlASX9ns4plpiwxcnJ7X59qiuVYsL
         1xJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767003153; x=1767607953;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zxHop4R1vebN5o3R54WdbAjnNPlb5TuWMLmhTQJH8Ls=;
        b=vc05EYNU0ZQtM7crJKrX54XEs+NwxK2nADQTYQI58wIH4NMRjuEYKMkznXin18clej
         ttpuGB+aALNdQggKp7rpeBcFwjN0lOy1NadWRi5vAidjJ6JrXY3AXVp7BosQ+9f6jIQm
         uEoMJ9MbDKeb/zFhmPAWTpXD4w5J0yYpuUW6vFpc+IpNxPEyWC4dCZeRpegpyDjOjbKl
         HJImPcfsZoL9sSNbkziewCUFWGpbmiu0WsM53EPSJbZJ2QBdLGLECUrPvXzJncgg8E/n
         cHFu7ubMiNdmL423nLgNCq9xGxdYOiJ0Iuj7m9dBPNhEBTXktyyaH+bHMOpFh6bTZZbl
         VsrQ==
X-Gm-Message-State: AOJu0YyjIfj439jDLTZ8UZZxorJQIffpHEQmxodiURWud7dz9JWJ9nK/
	oHEjt/EBAx5svkraduGT0Hp5VoH3SC1n/7IfIMSpX3l4FW/UfE8u43rU
X-Gm-Gg: AY/fxX6LzFaRJCXcp9kaQCGtNrtvBtW8XG2MmdfUPz5nGgpaaifVKWcEb64D8zTrQIG
	4vypO+vlgLwSI8CL8eA02tkop0FpHXIXtY4am8hxcPXr6fV2qGz6PaAtB6eYmPrgujO/TUNd6i6
	aETQV92eJJTrsVfvSr0LwIkEUFYg6kRGEdblCYk2fIp1/HT3hu3tLnI7H7hKRVpqQdVesSULLNl
	3qxGK15HhmvlKaHYiB2Ds482gemul3EWWA9p8AuuIQwdW3m9hs8mH8LozMZLGLpjVX1Pia9zNRj
	k+tHiMMAGO5XM0kpZHpTk+S6s/mzjzwaZySLhoctFyuM3EoLHsKNvkEP1zTdD6xpBnS5ngIEnzc
	ZEyiVqXwTZb8PdGI3jxT4iWMSemLFlsiM4DiK38lAQLiVa4stocTXTmE6qd51m6G8/GaSlndX0u
	lBS6ZN8nA/Mb5ukJL4WB0JZF3cu2nCmJ75KN4So8lx023UIxFtJaI1702LyujI
X-Google-Smtp-Source: AGHT+IFD9iy4PNySFr30nnCY8GO78DkRuBAO3uLhkHB4QfWW2O3r0sy+eyav6trMf24e38aJe/SHGw==
X-Received: by 2002:a05:600c:8107:b0:477:6374:6347 with SMTP id 5b1f17b1804b1-47d19594ce3mr335314215e9.22.1767003152529;
        Mon, 29 Dec 2025 02:12:32 -0800 (PST)
Received: from alchark-surface.localdomain (bba-94-59-45-246.alshamil.net.ae. [94.59.45.246])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d583f42dasm19840735e9.6.2025.12.29.02.12.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 02:12:32 -0800 (PST)
From: Alexey Charkov <alchark@gmail.com>
Date: Mon, 29 Dec 2025 14:12:02 +0400
Subject: [PATCH 5/7] arm64: dts: rockchip: Enable HDMI sound on Luckfox
 Core3576
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251229-rk3576-sound-v1-5-2f59ef0d19b1@gmail.com>
References: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
In-Reply-To: <20251229-rk3576-sound-v1-0-2f59ef0d19b1@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 John Clark <inindev@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Alexey Charkov <alchark@gmail.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=923; i=alchark@gmail.com;
 h=from:subject:message-id; bh=lEQTmzdRwAX++jXf/eD/FxjZqYX/Y19qCP3LEYW2Tk0=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQGhTAxH/ubXugjdmgt7yPZiIq62d//fbqW4+bynEVFN
 nTb0sOiHRNZGMS4GCzFFFnmfltiO9WIb9YuD4+vMHNYmUCGSIs0MAABCwNfbmJeqZGOkZ6ptqGe
 oaGOsY4RAxenAEx19kFGhhNrRd/ONm/Lavvm2rpy1fGk03e/zZ+izHNdv+o5a1q2WQMjw9OaaMb
 JExeqsj1geWs/x/fu1ufKp264yixW1VsrojvFhBsA
X-Developer-Key: i=alchark@gmail.com; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5

All RK3576 boards get their HDMI sound from SAI6, which is internally
connected to the HDMI codec. Enable this for Luckfox Core3576

Signed-off-by: Alexey Charkov <alchark@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi
index 9187012d6fa4..749f0a54b478 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3576-luckfox-core3576.dtsi
@@ -246,6 +246,10 @@ hdmi_out_con: endpoint {
 	};
 };
 
+&hdmi_sound {
+	status = "okay";
+};
+
 &hdptxphy {
 	status = "okay";
 };
@@ -691,6 +695,10 @@ &rng {
 	status = "okay";
 };
 
+&sai6 {
+	status = "okay";
+};
+
 &saradc {
 	vref-supply = <&vcca_1v8_s0>;
 	status = "okay";

-- 
2.51.2


