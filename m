Return-Path: <devicetree+bounces-222811-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 967C5BAD30B
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 16:33:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4CC3D3C1EEC
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 14:33:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 154C530594A;
	Tue, 30 Sep 2025 14:32:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="ofl5p9HW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF901FF7B3
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 14:32:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759242760; cv=none; b=suYb91MtkxdghHydvp+Q99uYUW5EkIbIofajjPuKp1BcuvjdK3209+Plzr6/ch7/RiTDGciv/d8L9x0plIodMA+51pgn9+Wwo0tJYng6t17qBilZEdUqZ+sKKupFGK8moFc+rGz5/+iBUSnQ3wN/Q+kXvESTzuvoPUy3BOSZDrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759242760; c=relaxed/simple;
	bh=6XDKwZQKKm/HcS7Zce2mlrECQKgBdlxp14xSsBBMKeg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LSmcchdx0tvhjV9cZq1AjG/LRLQENMg6UtTO7Geoxp66JWUWKzPNK0Tz1eHwjVhLvRBmdPgJSDKiniBNoRsXLy8ueSXCa7NYY6TdLw3BUdfBicr66IVtrHUvWwtAXjiSkGXANZEymAOQStoq0fKdphybpEDS/SJYrPXpRW5KXn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=ofl5p9HW; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b456d2dc440so104382366b.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1759242756; x=1759847556; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KpqDsPljIbI1ydAAYbBHpL4t7hGd6BLoLJu9kFhmW2I=;
        b=ofl5p9HWVxP6mVHwljTBWJBRTcn6XoAS+z4rAO+OceyTP+aRnPEoqGdjtqo5Qn2S+q
         IYBtkgFY1xwtQpg8nWEAZoXVYCzkjEzFHNR39U+LjqTHdFQv5ww1VAldJpMnlnCtczdF
         CZEvDL/qcQVblV7ySz4fVUv/RodROa1Hw3fyl29ZoowKPm2Zhgny0ODymrs/WWlvmY9G
         +37nc5r++8OIjqmlO1TsGvvIs33hoAbqySVG0XdzsShkPjTIc/no3iFGdZYBXvEb5s5K
         eL7oQEsPAvUNqw070L+YefsfsKr4Byx1l+XI77TR3Ew3WVcVSuKP/wiDaupnu5Y09/n8
         w/eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759242756; x=1759847556;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KpqDsPljIbI1ydAAYbBHpL4t7hGd6BLoLJu9kFhmW2I=;
        b=CEZGcd9eEtlE7k1Pc+3TxCjs4TYZBMicug4s4HiBAesdyGbxn7nb13H3EV+uNAXEts
         C6IJua8j48QcHLrmLxpxialXfZT5kkvxlRyV4gnx0FfkwpuNpf7rYOlgBJ2mYyV4dFBN
         ivtyRGcgFjsO9KrliLbyJg5+53D6ntx9Y5FSXyrW0rQjviRXASRuD9IX2x76TU7pLm/m
         P5K3+yjHh04EqTdsrJsAmtxyZEhF1RgY0aLtrILOwQxbPipQH8aLwCfa1jgMPqk8F+lx
         QyIG18xtfusgFbnh4FMa7bOmGZilB6MfEjSNBk/p9OebXiREKr2NlBXeYl7d4BsehxTC
         +Eqg==
X-Forwarded-Encrypted: i=1; AJvYcCUqXgOZKftoj9fW+M7zVVadJFKLvh5bHu/fjCbXcsdo4H/yA9zUPD7eVFIvjtsHKQsCzlfDxJAF4nZt@vger.kernel.org
X-Gm-Message-State: AOJu0YzNNp1taqPynjcBi2LC7w2JMnl43WBlrGdcEKmRzUIl5N4Ouw4N
	ftpvZ8AyiWZo5+ICVxC2mOp8lvFBdo/VdSZBk4wWc8cLRl0dpIiLI2bJIc3lmkRuQAQ=
X-Gm-Gg: ASbGncty8f7sCKEpvG4uKsL+nBpGJOcNoIjy6Qdbh6rQ/DpzofblxMDRafZIiTXepj/
	jvh2mejXMEjkiaH39zKqO1kkJmizLoMZgDhHchIfaHS0sGN+jW1JuctCmpgTbq/OFtkU9DrxRtc
	ooaE86JSU0KXQicgX5fgbceCPfO3Fd6HkOOuBOyNSMk9Jr6aztCSLAJDQKqWYdrN1KYX42ONDBK
	e+CHK5gkNQCj9qCWahFWsLgd4kPjwWoEm6Vrobv19aMI4oDgkpW0ky96TUuUXGFNqQVAUUYHOOL
	aqCIpZEHTk+5+XUPHLwV2+Tw3csuTqae6CpRK5kT0HVXaEkRcJiFP6nmQmIesXOkvXUrSfl/7Sg
	AdxgNXs5Xiwytx5x8PWUqe4MFY0964cwQ0w9xMe0N5YiRVx02HLcba04CJhgOW2I84Og7sj2TSB
	qK+rOGVRP2HZ/whAaSFA==
X-Google-Smtp-Source: AGHT+IFyvbxwgP3khFMfvK8Z3FvV7VS3kFyp8CZVMqy6iYYE4fRT64Yn3WmDZTXMdlLdYOJtArGTow==
X-Received: by 2002:a17:906:c349:b0:b41:822c:ce76 with SMTP id a640c23a62f3a-b41822d0d02mr385052766b.14.1759242756474;
        Tue, 30 Sep 2025 07:32:36 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b3dc2cf61dbsm499858466b.29.2025.09.30.07.32.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 07:32:35 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 30 Sep 2025 16:32:21 +0200
Subject: [PATCH 3/6] arm64: dts: qcom: qcm6490-shift-otter: Add missing
 reserved-memory
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250930-otter-further-bringup-v1-3-7fe66f653900@fairphone.com>
References: <20250930-otter-further-bringup-v1-0-7fe66f653900@fairphone.com>
In-Reply-To: <20250930-otter-further-bringup-v1-0-7fe66f653900@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Casey Connolly <casey.connolly@linaro.org>, 
 Alexander Martinz <amartinz@shiftphones.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1759242752; l=1048;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=4H+1X8ibBwQxx6F2/tlczJd/Zh53oYpIpneYTVnsrY4=;
 b=MkEj4fc1gplW3XRkFyG+YTnbELDyh++lWP1rydH0MJ5KRTho9D8HyWL4lHZBs9ii40y7yz1h/
 I0/PtM4t3HBAl9nJXXzVR7cZtfEEkrukBKYGAJP4Of2svukfI89BmB2
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

From: Alexander Martinz <amartinz@shiftphones.com>

It seems we also need to reserve a region of 81 MiB called "removed_mem"
otherwise we can easily hit memory errors with higher RAM usage.

Fixes: 249666e34c24 ("arm64: dts: qcom: add QCM6490 SHIFTphone 8")
Signed-off-by: Alexander Martinz <amartinz@shiftphones.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
index 2efcfb631c3683456794b0a0cc5686f00efd329c..ce794ca724db6deb39f7fae47912c3fefe974573 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
@@ -118,6 +118,11 @@ cdsp_mem: cdsp@88f00000 {
 			no-map;
 		};
 
+		removed_mem: removed@c0000000 {
+			reg = <0x0 0xc0000000 0x0 0x5100000>;
+			no-map;
+		};
+
 		rmtfs_mem: rmtfs@f8500000 {
 			compatible = "qcom,rmtfs-mem";
 			reg = <0x0 0xf8500000 0x0 0x600000>;

-- 
2.51.0


