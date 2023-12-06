Return-Path: <devicetree+bounces-22495-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AC10807B87
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 23:40:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8CDB1F219B8
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 22:39:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F724563B0;
	Wed,  6 Dec 2023 22:39:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF0BDD5A;
	Wed,  6 Dec 2023 14:39:54 -0800 (PST)
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-6d9d84019c5so102015a34.3;
        Wed, 06 Dec 2023 14:39:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701902394; x=1702507194;
        h=content-transfer-encoding:content-disposition:mime-version
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TqN/RpbxNNROdZHhaKm6j2kmc8xp8Sr+lxtg/YToAx0=;
        b=CENxszTN9rJFm4b2LFyMDzsiI9mbA6FtJMAAp2dMFAvE0nPUyBbyIPVPXbIUl+a9eO
         nVWwzfbpQMa2qmu9lE4kWWQK+WolRxindbuV7WatxeNCZTJil6WihFHd8zqKNlMwhaOB
         7IXw48ra0b+kXd+rG96fkZgtwAejuJjR5of3h5B4Ag7Vqhfg3mF6FTVMPznARORMZO8i
         pzYeqvDHFWNE9Hnk98dAyeeIk20FN0vRbNywZ76aKlDValx00hNihFEwcboQcKGXtACb
         nzM1VpmK2WRK82KaZ3Zlg6LH6XVDWmDalxdSETx+7AxrLjm8BcxzaRmpEb38FVDR+JrP
         zNkw==
X-Gm-Message-State: AOJu0YxAY2NyaTrRDtBeIOitg8aP44Rn83GR85ky1c9rzHNfGhBF2x7E
	EiXQxRbO6sAEPTC/ac1PVw==
X-Google-Smtp-Source: AGHT+IGCcrVdxi30zx1uqJCDyB0ouSk4oD7dEj34vNQariMLYbGLJHvS4T8q+OPpT+BzFpSb0mF33g==
X-Received: by 2002:a05:6830:16d0:b0:6d9:cfd6:61bf with SMTP id l16-20020a05683016d000b006d9cfd661bfmr1258842otr.18.1701902393941;
        Wed, 06 Dec 2023 14:39:53 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id j4-20020a056830014400b006d8811cbc3csm930otp.29.2023.12.06.14.39.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Dec 2023 14:39:53 -0800 (PST)
Received: (nullmailer pid 3469832 invoked by uid 1000);
	Wed, 06 Dec 2023 22:39:52 -0000
Date: Wed, 6 Dec 2023 16:39:52 -0600
From: Rob Herring <robh@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Frank Rowand <frowand.list@gmail.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: [GIT PULL] Devicetree fixes for v6.7, take 1
Message-ID: <20231206223952.GA3467946-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Linus,

Please pull some fixes for 6.7.

Rob


The following changes since commit fe612629746cf5cc7040529f780d46929605d0a6:

  dt-bindings: soc: fsl: cpm_qe: cpm1-scc-qmc: Add support for QMC HDLC (2023-10-30 16:28:19 -0500)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git tags/devicetree-fixes-for-6.7-1

for you to fetch changes up to 136c6531ba12e4a658376387e355a09c9b5223e5:

  dt-bindings: display: adi,adv75xx: Document #sound-dai-cells (2023-12-06 16:36:14 -0600)

----------------------------------------------------------------
Devicetree fixes for v6.7, take 1:

- Fix dt-extract-compatibles for builds with in tree build directory

- Drop Xinlei Lee <xinlei.lee@mediatek.com> bouncing email

- Fix the of_reconfig_get_state_change() return value documentation

- Add missing #power-domain-cells property to QCom MPM

- Fix warnings in i.MX LCDIF and adi,adv7533

----------------------------------------------------------------
Fabio Estevam (2):
      dt-bindings: lcdif: Properly describe the i.MX23 interrupts
      dt-bindings: display: adi,adv75xx: Document #sound-dai-cells

Konrad Dybcio (1):
      dt-bindings: interrupt-controller: Allow #power-domain-cells

Luca Ceresoli (1):
      of: dynamic: Fix of_reconfig_get_state_change() return value documentation

Michael Walle (1):
      dt-bindings: display: mediatek: dsi: remove Xinlei's mail

N�colas F. R. A. Prado (1):
      dt: dt-extract-compatibles: Don't follow symlinks when walking tree

 .../bindings/display/bridge/adi,adv7533.yaml         |  6 ++++++
 .../devicetree/bindings/display/fsl,lcdif.yaml       | 20 +++++++++++++++++++-
 .../bindings/display/mediatek/mediatek,dsi.yaml      |  1 -
 .../bindings/interrupt-controller/qcom,mpm.yaml      |  4 ++++
 drivers/of/dynamic.c                                 |  5 +++--
 scripts/dtc/dt-extract-compatibles                   | 14 ++++++++++++--
 6 files changed, 44 insertions(+), 6 deletions(-)

