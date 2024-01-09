Return-Path: <devicetree+bounces-30657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AEA8288DF
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 16:21:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8602CB2433A
	for <lists+devicetree@lfdr.de>; Tue,  9 Jan 2024 15:21:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B652B39FCF;
	Tue,  9 Jan 2024 15:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ZIQ9V5qh"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC2039FC1
	for <devicetree@vger.kernel.org>; Tue,  9 Jan 2024 15:21:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1704813671;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
	bh=vn1ce8hywqQSUdzE/tq3PAQDOHuc7M+muFOo7RqI5C0=;
	b=ZIQ9V5qhliT8bdeS0/pV8MmwrGpA/hci8sBcTzLetwqhswCXQpj1dn4jgr56S9YwwQUuWQ
	KtzmEXcJ/EtarX3sFq77hC1A2S7ixuTfISnNskJPUm46/Yib1IPrJPF4KGvtzQ/nIDOvGT
	48IFUKR1xIFOoCak+mijMfUq94e9wHU=
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com
 [209.85.222.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-692-XIboBzkPPOG5esrpzRvORg-1; Tue, 09 Jan 2024 10:21:02 -0500
X-MC-Unique: XIboBzkPPOG5esrpzRvORg-1
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7832afe1032so130672285a.1
        for <devicetree@vger.kernel.org>; Tue, 09 Jan 2024 07:21:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704813661; x=1705418461;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vn1ce8hywqQSUdzE/tq3PAQDOHuc7M+muFOo7RqI5C0=;
        b=Y0Q1zcEimjzjA3nDfULuQedtaMj5KM4nqoU5Djatj5rTiBP3CSAnrsko7cTbyNeLCj
         OH4+48M9MrWmOWk660KtCvAnuUh7r3Ae1fcyTRiGIc5dL7wCpA0SLaxmOJrR4R9L/Cct
         Y+rBxILg/YztOAMEeq19+T740jiadYnqxCe4+GJ9kyGHFI7+Tba5TM5VNo9+N7uxu3fo
         cnpg7lahZhc+rLkhpnonZuG6ifTKOgQuHourAOm5+FBcLDpofvmxxAtqK+dQs5L5yyAQ
         WPhHYyh20k5aOa12/Qv6rUDvv/kLTS8XH3yNuH+Ph35W2WN7dk1jMaQuABPg81Xg7k8R
         9bkg==
X-Gm-Message-State: AOJu0Yzmg2De7HvfUdC6RjEKsYnj+DMyH2GO9bVHCDg5V8+FO+bVIZyj
	dU2p84TMGe3UDTI/RXVP8jsRTwvzl6F6oPExMN8D/xIDSDKgh0LWQQo/sKcRMKBMMoN4JzY47bB
	VAcg7qSh+w3xXYPKJHLRkhypQR5feDgWtymPpi1T6AEs=
X-Received: by 2002:a05:620a:4008:b0:783:314c:48c4 with SMTP id h8-20020a05620a400800b00783314c48c4mr605882qko.96.1704813660939;
        Tue, 09 Jan 2024 07:21:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEn8hS9/EPAk99SwHPz6Ctm7qGK+fZo5cmWdV36DyjYJZKlNIvEBawV15ZkWLFEopPcYMNuVQ==
X-Received: by 2002:a05:620a:4008:b0:783:314c:48c4 with SMTP id h8-20020a05620a400800b00783314c48c4mr605875qko.96.1704813660554;
        Tue, 09 Jan 2024 07:21:00 -0800 (PST)
Received: from fedora ([174.91.39.234])
        by smtp.gmail.com with ESMTPSA id h2-20020a05620a13e200b007832016a732sm874832qkl.83.2024.01.09.07.20.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Jan 2024 07:21:00 -0800 (PST)
Date: Tue, 9 Jan 2024 10:20:50 -0500
From: Lucas Karpinski <lkarpins@redhat.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: qcom: sa8540p-ride: disable pcie2a node
Message-ID: <qcoqksikfvdqxk6stezbzc7l2br37ccgqswztzqejmhrkhbrwt@ta4npsm35mqk>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20231103

pcie2a and pcie3a both cause interrupt storms to occur. However, when
both are enabled simultaneously, the two combined interrupt storms will
lead to rcu stalls. Red Hat is the only company still using this board
and since we still need pcie3a, just disable pcie2a.

Signed-off-by: Lucas Karpinski <lkarpins@redhat.com>
---
v2:
- don't remove the entire pcie2a node, just set status to disabled.
- update commit message.

 arch/arm64/boot/dts/qcom/sa8540p-ride.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
index b04f72ec097c..177b9dad6ff7 100644
--- a/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
+++ b/arch/arm64/boot/dts/qcom/sa8540p-ride.dts
@@ -376,14 +376,14 @@ &pcie2a {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie2a_default>;
 
-	status = "okay";
+	status = "disabled";
 };
 
 &pcie2a_phy {
 	vdda-phy-supply = <&vreg_l11a>;
 	vdda-pll-supply = <&vreg_l3a>;
 
-	status = "okay";
+	status = "disabled";
 };
 
 &pcie3a {
-- 
2.43.0


