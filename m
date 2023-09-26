Return-Path: <devicetree+bounces-3384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D0B7AEA5A
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 12:29:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 71F27B209F8
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 10:29:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9F6B1F610;
	Tue, 26 Sep 2023 10:28:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081C5567F
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 10:28:55 +0000 (UTC)
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1AD5D6
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 03:28:54 -0700 (PDT)
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-27755cfa666so848139a91.0
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 03:28:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695724134; x=1696328934; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WfaKAkEtGy0qKsP2qaevsfIAgBgvuWknHRenCAvSkXE=;
        b=V/duNYPy3A64PzWtsTma4kkvW1v+HCfdG2V+Fsn1+asY3jEiQkaAhpMbq5htGlXc/1
         m4oyPDtcCb5d7IKWbuMsf1cp28K36r/aMHfxL1hgDOSKJF28prv181pFJwQq34unoLYV
         Hdcb0nXqkTZYlU+4xiEEFyYuDQyHG32UnIzS9X7NG1ybT74y64Yhfz8Gdld7DJmKfVM6
         At8WnCNTXrg84guh0yfSkFRC2EhJN9/xd+C/5AvCRhAZvVV+eDXlFRFx80CL0XFuIWBP
         y/KjtkPvQfi5VLjhEzzmurmuKganhQeEMeM1hQ1UPjTrKqbaP2Mxto+zeyEFFdPPmqXA
         q8kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695724134; x=1696328934;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WfaKAkEtGy0qKsP2qaevsfIAgBgvuWknHRenCAvSkXE=;
        b=fqTH+EHnVhJa/gnIore1tqlRryNiV+HsxKxHNbRQE0mQE3HysA+fLd4zHhi1TjrDuA
         xxwxfiZt5V9NDKPKah2ABefMI4LssTqvEkFP0jVosQKTeyZqKhPOihx1jYskUh078vTW
         82/TakFa9agIL4pjKcJh6lmHtzHofrbEcI5AMdTkFEEab75sONlBp/4v2Jf730A0E5oW
         4oPab/NQ2ac2Tre0EBPRaobTihhFF0JdqlFsCehbcvQ7VlbAsKVDJ4xA2mI/eT/KSGkN
         4uGd+1GT39OiQfFOj6tUGghEFdezZ2VZL8L7cz1Sd2uQMT/x6DPUejDeiPkVsPE1K1TR
         +mOQ==
X-Gm-Message-State: AOJu0YxefKgPad4nPRl6Mch5vNBxtGKjNvPWr9WeRlRtzzGMUDswjv9T
	1Qo5LBxNVf28nT+EWv9TEbI=
X-Google-Smtp-Source: AGHT+IHDA61/9gmybSgFs1Dn+VywMqjFOjve98px38mlW/v88W8ZwQAroGiQAWf6NdcZDWr8EMj2FQ==
X-Received: by 2002:a17:90b:100e:b0:277:2d8c:5c17 with SMTP id gm14-20020a17090b100e00b002772d8c5c17mr6806305pjb.0.1695724133997;
        Tue, 26 Sep 2023 03:28:53 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:87f:ba12:de84:998e])
        by smtp.gmail.com with ESMTPSA id gf4-20020a17090ac7c400b0026d54b2abe9sm3963829pjb.37.2023.09.26.03.28.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Sep 2023 03:28:53 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: gregkh@linuxfoundation.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-imx@nxp.com,
	Fabio Estevam <festevam@denx.de>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/3] dt-bindings: usb: gpio-sbu-mux: Add an entry for CBDTU02043
Date: Tue, 26 Sep 2023 07:28:19 -0300
Message-Id: <20230926102821.306860-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

From: Fabio Estevam <festevam@denx.de>

Add a compatible entry for the NXP CBDTU02043 GPIO-based mux hardware
used for connecting, disconnecting and switching orientation of
the SBU lines in USB Type-C applications.

CBTU02043 datasheet: https://www.nxp.com/docs/en/data-sheet/CBTU02043.pdf

Signed-off-by: Fabio Estevam <festevam@denx.de>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes since v1:
- None. Only collected Conor's Ack.

 Documentation/devicetree/bindings/usb/gpio-sbu-mux.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/gpio-sbu-mux.yaml b/Documentation/devicetree/bindings/usb/gpio-sbu-mux.yaml
index f196beb826d8..b61dcf8b4aad 100644
--- a/Documentation/devicetree/bindings/usb/gpio-sbu-mux.yaml
+++ b/Documentation/devicetree/bindings/usb/gpio-sbu-mux.yaml
@@ -19,6 +19,7 @@ properties:
   compatible:
     items:
       - enum:
+          - nxp,cbdtu02043
           - onnn,fsusb43l10x
           - pericom,pi3usb102
       - const: gpio-sbu-mux
-- 
2.34.1


