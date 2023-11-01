Return-Path: <devicetree+bounces-13397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F207DDF3B
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 11:17:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 058C91C20D44
	for <lists+devicetree@lfdr.de>; Wed,  1 Nov 2023 10:17:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7A2F101EB;
	Wed,  1 Nov 2023 10:17:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="aVNK09Id"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BFCE101DB
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 10:17:12 +0000 (UTC)
Received: from mail-yw1-x1149.google.com (mail-yw1-x1149.google.com [IPv6:2607:f8b0:4864:20::1149])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6032011C
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 03:17:10 -0700 (PDT)
Received: by mail-yw1-x1149.google.com with SMTP id 00721157ae682-5a7b9e83b70so5918717b3.0
        for <devicetree@vger.kernel.org>; Wed, 01 Nov 2023 03:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1698833829; x=1699438629; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=GCfjHREs5pEMf72upJaooTRYe6HV9ikyCsileBJWqEU=;
        b=aVNK09IdJxvTQCHQ+fsccUmEoyhcOpYU/N4CSeLUFEfOTfeZ2lcz7taXsvymPHQ5IF
         QB7aDFdgKu6c1HiJ1CaCUhKBggV+HrS31IkuJEOMtkbr0Pwnn1GAGNd3t9ZYTNNLBbxG
         1Qccdxx0McvW8iRZ/iEft18WIG8Cw1Kdj2TyT65GhsM3rxHpivQ6VKljM+TnrSkKAi9P
         c32UR3gnSA7+/lDEf26VbLLpRvS8VKqnBZh9Y15qGTFE2Fa67/mgIYE9tHgiCA8Pmha/
         zFzf6vyJ+ez2r23MadZD/lJJzwpy4HbIirVAjxe/7Q4PVayH1weyWwaO5Ff8ochGuYzx
         0Kkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698833829; x=1699438629;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GCfjHREs5pEMf72upJaooTRYe6HV9ikyCsileBJWqEU=;
        b=SVS5s2RJMzQ5D4zaZIkKVEzgEuwGFVHa3hUwgMMHmwxKd0OL9xeQT6aCTZQnOSXOxg
         BPL82XhFFgQT++YMOEPiuL/B3oTwoMrq+8sJCbyHNzx/GICWXN6t0NvzP3pf4meDUUCC
         CE3raCGuAbWnEDi5XAk8kTHWirete1jffLP4Gxd2t4yn960iUbLoHsQLflw9l4p2gKOW
         hpVTLxk714rEBSc64mwgl4y+1HSuxDPSyBpGU+/n+tXuauzGliJyZx1Ujfc6/LNfHhZr
         tS0BBe7pwcIsjIyOHEX26FfpAqjDVxGSCz2K9ReaH8Fb2/RIFOFJ59jPnxRliYfbhntR
         iJYg==
X-Gm-Message-State: AOJu0Yytt7juWjMWKUuNkJe58ZvKHdRNu3/eCJRpYdnW1EiFSf0I/nN5
	T468h6k6lnL273Q41y5Rn6A62D9uzDWD
X-Google-Smtp-Source: AGHT+IEjYMUpKpvpCvh+KfUDpQbFLjsINNUjpLZWsNpFXOjr+w4UtkwMZ6r3nPZ3BkLJJ1Y2MtAXmZNgKuvq
X-Received: from mnkumar0.c.googlers.com ([fda3:e722:ac3:cc00:4f:4b78:c0a8:313a])
 (user=mnkumar job=sendgmr) by 2002:a05:690c:ecb:b0:5a7:b95c:a58f with SMTP id
 cs11-20020a05690c0ecb00b005a7b95ca58fmr63716ywb.1.1698833829577; Wed, 01 Nov
 2023 03:17:09 -0700 (PDT)
Date: Wed,  1 Nov 2023 10:16:23 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.42.0.820.g83a721a137-goog
Message-ID: <20231101101625.4151442-1-mnkumar@google.com>
Subject: [PATCH RESEND 0/2] Add a quirk in xhci-plat for parent nodes to
 specify no 64 bit support
From: Naveen Kumar <mnkumar@google.com>
To: Mathias Nyman <mathias.nyman@intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, royluo@google.com, 
	devicetree@vger.kernel.org, Naveen Kumar M <mnkumar@google.com>
Content-Type: text/plain; charset="UTF-8"

From: Naveen Kumar M <mnkumar@google.com>

This patch aims to expose the XHCI_NO_64BIT_SUPPORT flag to the parent
nodes of xhci for clients to specify if they can not support 64 bit DMA
memory pointers. This issue was observed with a Google SoC that uses
a DWC3 controller where the virtual address's higher order bits are
truncated.

Resending due to missing out some reviewers/maintainers in the original
patch.

Naveen Kumar M (2):
  usb: host: xhci-plat: Add quirk-no-64-bit-support
  dt-bindings: usb: add no-64-bit-support property

 Documentation/devicetree/bindings/usb/usb-xhci.yaml | 4 ++++
 drivers/usb/host/xhci-plat.c                        | 3 +++
 2 files changed, 7 insertions(+)

-- 
2.42.0.820.g83a721a137-goog


