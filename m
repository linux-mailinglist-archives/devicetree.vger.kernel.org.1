Return-Path: <devicetree+bounces-74489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBF29037AE
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 11:19:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 290311C21665
	for <lists+devicetree@lfdr.de>; Tue, 11 Jun 2024 09:19:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11D56176AD7;
	Tue, 11 Jun 2024 09:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="da8muCxR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C43D176244
	for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 09:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718097563; cv=none; b=DeB6jPO+YrnkrKmATBYBRDghhJ2jSpsEby4cw2nFrdcXx35LkghagisLt4k2XgaXwuxXGuiOyy8bGOm2eZG8J2QhDzr63AZQ3qeG4Sca6GADnOAZSk+AyJhxslvjLsUAfFyxrVbCYPod27KiNzk/DhLYRsKdkGRVH3/H2ok+VK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718097563; c=relaxed/simple;
	bh=kXlUklN20Q8eUu9WxiS+OZ+JObXF15mPXqfLY0fCwxk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=oslKObf/ZS6anHSsLQ4ullLLC7wcEsDGkZX2uahp0PtTGefEuiXM0gcnNpxhTSy0LvUO2vHp/vil2i20nnQkSklasldeIboGpgobyBN5A92fDOAjqGALhAfsJHOOfOmULRDCDNUsmRTVniq4cStDYPhGmRKdu2H1MTwJHiDpx/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=da8muCxR; arc=none smtp.client-ip=209.85.221.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-35f1bc2ab37so2112062f8f.1
        for <devicetree@vger.kernel.org>; Tue, 11 Jun 2024 02:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718097560; x=1718702360; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vi/zJoTaekHU+/osjmDHmN4bmVrKAfe+svHOjhmObm8=;
        b=da8muCxRGTWyRD+kyFxo+SiZ1pLavOh6/trQn6tB8Jmy7uXAzKKJg72c3mrlYtL/IX
         nZUaDaJXLux5xyz5Eqj4QugPPfxuj6++pMdohDSU6DibwA02bZmxZxGXwVN/9/fW70qh
         bjEZYq3Jzb9gDGW+WuHbrf6ee12fODPaTXT9bfMnE68S8mBatGhkbXBiZx0pZZuPWqHE
         BhK6nKDtjiNR+UrmmbrFq//G0LfqnaOWa8k5XLzy6MvSjsD0zw/6q6Ms6tsgZID2/xy4
         LzA21ahh3BuFcOCLkWKQku+fa/L8eTCH6Tu6V4nZeIHF4VWErjeyEBgWOHMoCKWlOy9p
         QXFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718097560; x=1718702360;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vi/zJoTaekHU+/osjmDHmN4bmVrKAfe+svHOjhmObm8=;
        b=eDqxhjtvCYJ95ZnokRnKAfuWwRR46JFksn4CFK6x70r25CsIXHD+AYk0YPKwSAPX6N
         5ZA7JXE+HE3YcR3bXP49TA8yiCgCyvsghJ2GdVeE0l3+ah92OsUEru0MVsYk8jNMnWHz
         4zy+rwwd9ZdK2Hznu7BHFsKeVvQdPU82LqPHhHIehBr8h1vH7u2OuX2iCsQPhHSMN2V4
         nleKV3Y5RZ//CkYwgfH0u3TdxdT4CfJm9Qu5s1TvV+HChw+68LdiSiNTTrlTHNZ5uVDK
         zT67UFEnkHFMSRY1sNUIEJXUB5muUg9vNCS+zgSVoIdgLbqMg+1GlWLtPcGO7pLpyDgE
         nsHw==
X-Forwarded-Encrypted: i=1; AJvYcCWjA8eqG0FV69BlBW+8YwKTuS1bEUyOiyV7qjg45N2SQD6GPmK+9C9fzTqEAlEiisXS8TKO+sPkazrQGsL7D2g8m+4Vfne3pAcdBA==
X-Gm-Message-State: AOJu0Yzo5hK3sFYZmiRS9iqcrvjoU/Tu07NYyUpXg8hSi23vZMAnYsZJ
	znQ9kDvwHKFO3Y2Tu+X2ylhQJYJEnd3Qj+PmdnLrwPTyhCh6w+M+Nsw4pMcdWL7UPW6hv9+BvrM
	LLho=
X-Google-Smtp-Source: AGHT+IHQSTbevIphGHCvbrOMQjG9ACIHi9SFdQoe+sA54Qnbx7zzX31Uv88M+9SOlhZj8f5WihFAeQ==
X-Received: by 2002:a05:6000:a84:b0:35f:1f3c:b62a with SMTP id ffacd0b85a97d-35f1f3cb667mr4223027f8f.58.1718097559838;
        Tue, 11 Jun 2024 02:19:19 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35ef5fc3197sm13334619f8f.101.2024.06.11.02.19.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jun 2024 02:19:19 -0700 (PDT)
From: Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/2] ASoC: dt-bindings: convert everest,es7134.txt &
 everest,es7241.txt to dt-schema
Date: Tue, 11 Jun 2024 11:19:16 +0200
Message-Id: <20240611-topic-amlogic-upstream-bindings-convert-everest-v1-0-a7f9b4c9005c@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJQWaGYC/x2NQQrDIBBFrxJm3QENJotepXRh448daFQcGwIhd
 6908z5v899JiipQug8nVeyiklMXextoefsUwRK602hGZ2ZrueUiC/vtk2Pfb9FW4Td+SQqSovK
 S047aGJ3Qxi5MfjYWDutE/bVUrHL8i4/ndf0AD/EKGYEAAAA=
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-sound@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=899;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=kXlUklN20Q8eUu9WxiS+OZ+JObXF15mPXqfLY0fCwxk=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBmaBaVzg33iyMvF9EviNJegXkWD7JUrsT/u5Nycm9r
 lTpqliiJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZmgWlQAKCRB33NvayMhJ0bbID/
 9NPSONOA42tIRng3nhZEKZPYGZ8Qdz8lXwd1AC7mmo3ri603pUmJ+vq/+KE668TrM9Y8jImbnm/PGn
 aMZcM9eNlQI1Vm/Z8YjSCkWFeOFeUbX0JdVINQd5WUgupYUxz/pVLv+WMcnyeVYZ7FSB+BZQo7flYc
 f6bsAllTCUjBC3xOXFVtK1ijFRoq++pjh4ciYD/Vb5cM66KzIp3un/m0fObrHQayHcVf0ug4XN5qJn
 +9GzGKBa+hgt6In3FUBcJWJ2J8STIq85V4XoAPsL3c3DqqQk/od8ZW/DBm3DJGYa7g2P2Rs1IYnBsZ
 RXpZLprDhFKqrQA8qSaB2Zh9j5G/smvqUsSSuQBBBw3/R5/X+wTYmBzjQaSgUmfLYPqdl5mh6jh3Dj
 AJG7OtQFEMUYgAKanvCgxiYnB6gQMWwCoqUxJFUtnKBQI0VNQLmKrT2b4vhpGRC2WpcJWA/IG7VKAL
 2TholFfMyEsWhYMpyBt8TMbDmJZmF4B/D5sa6VyjtLUBtTTDgb9RlHzP9wvIsbu5CBmF49WEJJC1oq
 79nqfxMgFIP7Uag9MjCxvZgtiYx3h1ChiG+1pXNC9lyGocC50gsYw7oFUeOBPDYdKnAb2diTSbn6HH
 w/XroLHBnNbtys+MUGLselm2HoUsQRdSbQTOO/9SXj/QmkovkZ6E4IiGzpRA==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE

Convert the text bindings of the Everest ES7241/ES7134/7144/7154 2 channels
I2S analog to digital converter to dt-schema.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Neil Armstrong (2):
      ASoC: dt-bindings: convert everest,es7241.txt to dt-schema
      ASoC: dt-bindings: convert everest,es7134.txt to dt-schema

 .../devicetree/bindings/sound/everest,es7134.txt   | 15 -----
 .../devicetree/bindings/sound/everest,es71x4.yaml  | 62 ++++++++++++++++++++
 .../devicetree/bindings/sound/everest,es7241.txt   | 28 ---------
 .../devicetree/bindings/sound/everest,es7241.yaml  | 66 ++++++++++++++++++++++
 4 files changed, 128 insertions(+), 43 deletions(-)
---
base-commit: c3f38fa61af77b49866b006939479069cd451173
change-id: 20240611-topic-amlogic-upstream-bindings-convert-everest-4d5a601e4ef5

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


