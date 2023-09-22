Return-Path: <devicetree+bounces-2262-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 376D87AA620
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 02:36:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 19764B2096B
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 00:36:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C9DB387;
	Fri, 22 Sep 2023 00:35:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B35D0377
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 00:35:56 +0000 (UTC)
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DC49F5;
	Thu, 21 Sep 2023 17:35:55 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2c00b37ad84so27861741fa.0;
        Thu, 21 Sep 2023 17:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695342953; x=1695947753; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pcgEpxf6nFpDc1AoWBX1NbEg1wTZhjC9vC9cuLFntGk=;
        b=bP4VmE/yFI4vZJuXrzG/dTfW722v32fqJ01fOeyJGWPQRhdLLZcF8GdGCDtrA/A0Ap
         eOxx5sBxTu7FUM3KXH05jHHIG6bpBHg+MamyPSgGRVqhTabdMgefO5ZbITa2EcVRxxze
         VMR4Hf3YNVvQK84aBqQfXqmet/QqsYR/+5bj63oy2ARMIH/LbQ9FjR9xdmsg8q9+5wZX
         Mo8UuHQXOrilQBm7cr89IzkSwVS8mBsebqetQaNQ8TR7CmcR0FsSvhFmQv8vAb+p1v4Y
         X4bnMq8Tsz7p4ElxBYg5vWHubTsyadrsrqa7ATKSzaAAgHO0vkf8tJIJJTj+HixXN0fi
         Ou6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695342953; x=1695947753;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pcgEpxf6nFpDc1AoWBX1NbEg1wTZhjC9vC9cuLFntGk=;
        b=U/lEXPxmwL0mxeIG5E8LC+vexqnWflYQXUUaumYdPbS6apT+nnUcofO4UoWCVIXAU1
         0eVZwInILYlqSyBfcPyoh6z3lPa415v0PGUXKoh+pn0v6UZerjXhxTEJN3mg0BcdS8B0
         7+a49D23fY4FJ0PwWgRCUC2V2l6AHlTCHd+EFzjVXERBGCE5wlEFt3KjJ564op6ZWSHf
         EymniS3vqBpGAyPXRPm2qSjEQXrc3scLFcrCu7Bvff8JreRqTmXM7My9lFfjb2yvdtnK
         cWsbJdbd+ppdCuSaq7kw3FbNByhJlP5dSNOzXoTxkjSlrGRQeh2Ya3+ATJaY/0lxfmtA
         L8sA==
X-Gm-Message-State: AOJu0YycTfgQrbghQXnPGxTJOF20S5iN2QDuWb8O2s2Z6+RfKLI6CNpT
	ZhFQZ4Ah/myIHWIECzZZts42LaMNKMY=
X-Google-Smtp-Source: AGHT+IGH/FfccntZ6SNaaAn/GWzo7C23wHsPYmFcJSIYjoNSGJSSL4IrSjXHAakui0LRqDfkJhDUjQ==
X-Received: by 2002:a2e:9295:0:b0:2b6:dc55:c3c7 with SMTP id d21-20020a2e9295000000b002b6dc55c3c7mr6360106ljh.20.1695342953141;
        Thu, 21 Sep 2023 17:35:53 -0700 (PDT)
Received: from i-vetokaappi.home.lan (dsl-hkibng42-56733b-36.dhcp.inet.fi. [86.115.59.36])
        by smtp.gmail.com with ESMTPSA id j23-20020a2e3c17000000b002bff365c7bfsm615462lja.35.2023.09.21.17.35.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 17:35:52 -0700 (PDT)
From: =?UTF-8?q?Matti=20Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>
To: linux-arm-msm@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht,
	phone-devel@vger.kernel.org,
	=?UTF-8?q?Matti=20Lehtim=C3=A4ki?= <matti.lehtimaki@gmail.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Add rpm-master-stats nodes for MSM8226 and MSM8974
Date: Fri, 22 Sep 2023 03:35:31 +0300
Message-Id: <20230922003533.107835-1-matti.lehtimaki@gmail.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add rpm-master-stats nodes and the required RPM MSG RAM slices
for MSM8226 and MSM8974.

Matti Lehtimäki (2):
  ARM: qcom: msm8226: Add rpm-master-stats node
  ARM: qcom: msm8974: Add rpm-master-stats node

 arch/arm/boot/dts/qcom/qcom-msm8226.dtsi | 32 ++++++++++++++++++++++++
 arch/arm/boot/dts/qcom/qcom-msm8974.dtsi | 32 ++++++++++++++++++++++++
 2 files changed, 64 insertions(+)

-- 
2.39.2


