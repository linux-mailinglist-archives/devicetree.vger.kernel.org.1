Return-Path: <devicetree+bounces-224828-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 588A8BC832B
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 11:08:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 47D784F719B
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 09:08:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4585D2DFA46;
	Thu,  9 Oct 2025 09:06:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="qEVTNfY5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 504B82D5940
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 09:06:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760000816; cv=none; b=QvPapotC6YEn4N5e3DEFZs9B0UuS6BzpMHjCKyyrN60eaV80F6bKzTvnOtdhsgpcwd+2fA/PNduwvYazETAV8FINDYt4B7dSuDHqgXUf7WSQ/NXk3UXH8pIMi6JY6XsicLkdOtZ8YWn+g2K/O0NEGU7qTUnta/oplTxqWsZMWfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760000816; c=relaxed/simple;
	bh=yLdE29W3q6fp6RFFvLxYUfrIrhtGR1wmDmW0Sr4YfZI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=jMcXAWy9EvHaQIWHTFEjBD80OvhV750GIBmI4IRrBKjRcGc2vpHQ9Dqew+kf9W3Z7NtRF+9teGNFJ1/3nn4O09H2yXl11YvccDalDy7j78DUL18RAugWfx1NPGwjeB1BjzW7wJK5xE0JFxfLDNAQkTbqPtnQI2wdIGyUcxLh2EM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=qEVTNfY5; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-637dbabdb32so1357052a12.2
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 02:06:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1760000810; x=1760605610; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O4NjgC9RkbCwMcFDlcSxR+iB4R9yIvYJSpP6iT4sVxU=;
        b=qEVTNfY5DM6LhBvMP0Bdl9LTz+/JavDr93pk0+ov8L74QYTW4RyfAch8CfL0AXIOn3
         knPmLBrjSeYjTnXZefmi7r9mi96oKbu+LK49T+diBKCOhhNa7y6BfjuIOIVkEiyO5InC
         U+ri5s7755fEnsRarkCNtXZ24VWL2Nha8c/bfKZy3FvYw4qCva3NAdgIZ1PSEyij8ZwC
         ktX5DtIOlONTr+RO0NdlFYmvAqfTv/zbW/QUMrgsO+1WTRRK2z7qiMUdqYJgAxQtVbyP
         GAqa6gxNAsvv+nC9bHen3qEPC9tRQnLruUgbSCtIWxlfyueP05JEghTEKXqEXE8qs/Wl
         ymMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760000810; x=1760605610;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O4NjgC9RkbCwMcFDlcSxR+iB4R9yIvYJSpP6iT4sVxU=;
        b=QO465iMlg5Xg4Wngdir2Z5votXS3A1WsR67D/nM4dyjZWVPFSnCEPk3N+s3DC8lt6E
         RtSOJml6NtvbEgVO9/bKJe7WQ1j6aMbj9tjEBkdrx/aP7LITnmqqO9QmAstQWzVmBwba
         yIAV+DpVrIW1JV3Lo7vNG5rwGPMh+746vey4twn6j5VIc96VSGzHiY44i8uVQ7PEU40R
         sW+y1NigcUEer6974mlmGzA8vR5/8PB3efrsEJ1mF0DS38mTP70TbAe0ho/+sTMt5Z5C
         Yu7HJ+qzOwcyKsj8+fZONxJ4uDogm5AUbjG/vHtn6shpWrzNv5D9bpOJLAY0U/L8fs6b
         2O2g==
X-Forwarded-Encrypted: i=1; AJvYcCVNXvsPJjhZOaSF+Kl5jjtPxNYcqQfGtbx+xLGFHcrMT0Ny37kvEB+LeBqtePPcUkgDp65Y3/bCPquC@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1QAbq79xkrOlHlAi7+iL5+YDyCLyd/i4R0rrpgCz7SgJ8Yb3v
	Pn9FWGRM5N8w/aiKvTrCa0ugJPZB6f3TMivLmdZ2WALcd0rO2qsnE+A78wrAAZuGFdA=
X-Gm-Gg: ASbGncuQnRJiBqqGznR0JTiUFcBxZPXBiInZgGSKMmTj2h9+ZOW2aC6J+mJtVjtL3Db
	zDaX10iUg0m/sGXQZGC5Sa9mOnHHw4UH6pfRUlvTLVD+kcuc7A268owR2kCHhhCZZ66tIgJ6NiS
	n7ysvG98p7YYaLzNRMEnaHRC9g/KGJN+sgUvRZmAP/13ZxD1kQh6kyPUYJAmxeBc+0MUm4v47oX
	4yre9KalkhoCFgWxQ3IfknU6s01K+UDYfcxAYTKxzpJqA9JtzNHXXQ8CpUIHjH+xlnh6ybcMvLn
	M9x5J9ZsS0ln0OMtCndcNXN1nG7CuKsa25YhISJGCpyJ0ofA81gCv1UJo+Y1KYxEIaupBxauwv6
	9n/eVxjbkNuw3zwOPCJu9Mm8redP4QaFXQJyIkp7Folj+VW9wTUNASQHc4mcDTBxg6SCXIetLdH
	QdDbnIeQq9hPYC21yfBxyPfPINJ+WC
X-Google-Smtp-Source: AGHT+IEGHEsWgFTbqDlcjmaxGAtchnOTHZU+ZqbHIvrNZjcqWAofDGI4WU+100Z28ra1wVCmv9Se7w==
X-Received: by 2002:a05:6402:51c9:b0:629:e50c:b058 with SMTP id 4fb4d7f45d1cf-639d5c52cdamr6533867a12.28.1760000810172;
        Thu, 09 Oct 2025 02:06:50 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-639f4109046sm1905755a12.44.2025.10.09.02.06.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 02:06:49 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Thu, 09 Oct 2025 11:06:36 +0200
Subject: [PATCH v2 6/6] arm64: dts: qcom: qcm6490-shift-otter: Enable venus
 node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251009-otter-further-bringup-v2-6-5bb2f4a02cea@fairphone.com>
References: <20251009-otter-further-bringup-v2-0-5bb2f4a02cea@fairphone.com>
In-Reply-To: <20251009-otter-further-bringup-v2-0-5bb2f4a02cea@fairphone.com>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Casey Connolly <casey.connolly@linaro.org>, 
 Alexander Martinz <amartinz@shiftphones.com>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760000803; l=892;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=J//KKH4NjGVxe+yIfbxvzMAr1vNzhSAP+lT8QV/hXkI=;
 b=yla1QJRbGcCv57mtvOUoDOjq/Xyu95e70upu7Js7Qn/849RcV1TZ0roEh3wf7o45VP+LpkUSt
 lXFf/kO0FWQAk5WA+lK9U8lPfA8xHwlxzsO3zlswLBccWF97J7CUicJ
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

From: Alexander Martinz <amartinz@shiftphones.com>

Enable the venus node so that the video encoder/decoder will start
working.

Signed-off-by: Alexander Martinz <amartinz@shiftphones.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
index af6f7b41201d..a3e6b6a96530 100644
--- a/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
+++ b/arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dts
@@ -981,6 +981,12 @@ &usb_dp_qmpphy_out {
 	remote-endpoint = <&pmic_glink_ss_in>;
 };
 
+&venus {
+	firmware-name = "qcom/qcm6490/SHIFT/otter/venus.mbn";
+
+	status = "okay";
+};
+
 &wifi {
 	qcom,calibration-variant = "SHIFTphone_8";
 

-- 
2.51.0


