Return-Path: <devicetree+bounces-110470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A2799A7B9
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 17:31:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 45AFB28568F
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 15:31:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1023219645D;
	Fri, 11 Oct 2024 15:31:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=marek.ca header.i=@marek.ca header.b="g4sTiufL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A94785270
	for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 15:31:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728660670; cv=none; b=K0BXbbzqYBd4zD5ddRXJxveRZCdq62jZiki0G0bjobAZDVYmI51GAoQteFzAE4SUA0bNt0l94BC0nqyGojDjHRbGDnpatea3extA2b5a1hfwGD3dQJ81qZuDDuqMiN/dG5QLwV5FJOOGafCmdxSgmbY2BxaTLqUd077e7QCbvl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728660670; c=relaxed/simple;
	bh=l7jQ1X2oBQuwdyuwW7KQ7mPnxUbY84M9o4xS5gFr5Pw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QN0bf9986l/qy8CkflnSxthiZ4UHMHAqFvcDugNsN02L40BtpoeZSfE3/uN24QcX5iZ6wbtKW/Lpy7Dc5HmpEH9uOg9BPv19kSAUqBDhV8CmvreVW53raCawFVtQv+CvjzBaOoNjNCMN8sq1VxKYZlCF4+9hGUrD9+ASVmZcgU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=marek.ca; spf=pass smtp.mailfrom=marek.ca; dkim=pass (2048-bit key) header.d=marek.ca header.i=@marek.ca header.b=g4sTiufL; arc=none smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=marek.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=marek.ca
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-7a9c3a4e809so161682485a.2
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2024 08:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek.ca; s=google; t=1728660666; x=1729265466; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fb2KcZ8vB52++p4TQiPnR8QcBRBwDyWeIHZkz6fpi0I=;
        b=g4sTiufLjFl/0P4WCDbmVNR41hUUyBshzw2UUWVWp83PxZzEu3Z7mC4/p7TTYNrjA2
         sOJyyEEhV0vySd+1QiDnORqKGJW0Fbu24MQPq/xhBaPw3hr0N2FHJvXfEekuirwaywy+
         Quippa/lbwaVfjl0SzkfasEi3IjNRssxg0CT35H/N4tMJ7Fdtzul4iL0dT9V3ppLVT8+
         ZtyVvI8qfshZTyIv7xIeeHmryKBKDalZfraBBETVZ66ekRUvl34Lb06ghPd9k/7ekxkt
         uJOKlUEPPHlkJomyI6M+BU6wA/SRB/Xs64b9giHMs2780RlC4UxnWn1IXRyjtQu5d8wY
         EL3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728660666; x=1729265466;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fb2KcZ8vB52++p4TQiPnR8QcBRBwDyWeIHZkz6fpi0I=;
        b=Nk8VFS+0eoFWF89ligFVlvSFUYlGiOAf3Otrm1j7D/XQ9MtqQv8u6684N4RlL3Y+Fp
         6YOozSbcOJeHsZOxEPYOvm97YxfwI034gRh1G4Ugsd6aUMXH+aexykN63/XHPDWZM7R9
         zHoDG358jjs+g8Uaex3p2yWyyjSg1bulzIntYsfRZQUhp0jmH2RRP5QtU8WPm1Fy4fUC
         tq4696faPNz5oKkPyYZ7h5pCswSKOlGA/n9MluHNaYGKWPctuPMgJl/ZCgwyJKPeDHuh
         awW5F5EBz2b7EyVvyY4i6qyVmGlL13lEYzOfqXXkOXOPLYPSUgCOOksZ4c0gnJ6QOXSl
         8NyQ==
X-Forwarded-Encrypted: i=1; AJvYcCXtxHYxh2dZE5LmhIUupo+JgVEW0PKxLQHZNyvi32bkV85rIs49et+oQm80coIpSvEA+Tf9oGJFT9Cc@vger.kernel.org
X-Gm-Message-State: AOJu0YwipPobMuuUrY1qfrwaiqdOm3mJPy+vifi7mz7O+SLJHuogD82Q
	D1wVja3jnWvf3FhQHDVchNaIF1WSIx+IAFaFpL9yAJk0flYZUhK6rdgUoF6DauuuQEXRC7nYaDP
	5RPs=
X-Google-Smtp-Source: AGHT+IEFEE0XPv0XTlAVQlyG8kxf8Dil8h+qcmlGDZ/regXb5Cq3ODYbkDwLIinAt94OV1ArDaIyGA==
X-Received: by 2002:a05:620a:170a:b0:7af:cea1:2de5 with SMTP id af79cd13be357-7b11a3a6685mr404387485a.41.1728660666581;
        Fri, 11 Oct 2024 08:31:06 -0700 (PDT)
Received: from localhost.localdomain (modemcable125.110-19-135.mc.videotron.ca. [135.19.110.125])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7b1148d6a09sm141714785a.42.2024.10.11.08.31.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2024 08:31:06 -0700 (PDT)
From: Jonathan Marek <jonathan@marek.ca>
To: linux-arm-msm@vger.kernel.org
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-kernel@vger.kernel.org (open list)
Subject: [PATCH 2/2] arm64: dts: qcom: x1e78100-t14s: enable otg on usb-c ports
Date: Fri, 11 Oct 2024 11:27:12 -0400
Message-ID: <20241011152712.31571-2-jonathan@marek.ca>
X-Mailer: git-send-email 2.45.1
In-Reply-To: <20241011152712.31571-1-jonathan@marek.ca>
References: <20241011152712.31571-1-jonathan@marek.ca>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The 2 USB-C ports on x1e78100-t14s are OTG-capable, change dr_mode and add
usb-role-switch flag to enable OTG.

Signed-off-by: Jonathan Marek <jonathan@marek.ca>
---
 arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
index 08ec2419f95fc..8579c45dcb0a4 100644
--- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
+++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
@@ -1033,7 +1033,8 @@ &usb_1_ss0 {
 };
 
 &usb_1_ss0_dwc3 {
-	dr_mode = "host";
+	dr_mode = "otg";
+	usb-role-switch;
 };
 
 &usb_1_ss0_dwc3_hs {
@@ -1065,7 +1066,8 @@ &usb_1_ss1 {
 };
 
 &usb_1_ss1_dwc3 {
-	dr_mode = "host";
+	dr_mode = "otg";
+	usb-role-switch;
 };
 
 &usb_1_ss1_dwc3_hs {
-- 
2.45.1


