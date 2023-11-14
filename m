Return-Path: <devicetree+bounces-15759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A84E7EB935
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 23:17:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5EDB21C20443
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 22:17:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B29D2E82F;
	Tue, 14 Nov 2023 22:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="QnJ20zLm"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 477A02E82B
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 22:17:23 +0000 (UTC)
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F07E8BD
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 14:17:21 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-9e623356d5dso670325766b.3
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 14:17:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1700000240; x=1700605040; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=i5X0ev204ZNEoucYCkXvvEMkw3KCjCiqPlehaNMm7Us=;
        b=QnJ20zLmsa5GeL22BK30fNbInHkFag3wwSqspWhB+azO/rry65yQsvx0lhg1dhZQkg
         1uAKz/Eisfdlwx05nfoxdXjLVdnHdByhFEnlqKRLpnCMzYMkjnkwoQxZvS8n4gZwqrHE
         GXrzgh/ZH6Lmv1K+I2n8Dz2tIGrmsT6J3jAN0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700000240; x=1700605040;
        h=cc:to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i5X0ev204ZNEoucYCkXvvEMkw3KCjCiqPlehaNMm7Us=;
        b=SMZ6reX+8CRCYlUJrk8NRINCokafVMf+lKWhO0IrjV9IsD9PaKBxU2dAFT1EUpulG9
         FPzD/4PlEniHu4Z0DjZx04chjJDaFw5kzStJT6QghlWXoTWm/aGpRxFSuOeDliorItfz
         1PZ2wkg5ybh75b/JYS5Pb4pbXQXw4C434Kpaq2eYSxsZFN7X2DaQ+fYZmHAgpzUF1yEo
         zq/ZzlWvsTTsFCmthwpL8uDwfeigrgLQi4cw4wFRXOEJmTVencJymUzRKekjuOWLdYqm
         1I9Ye9cNE/+2LbXsG/nd1UJ0TSK4lJSF+lrMbpX9vE+6QPoh1hbdoDBRCM39vo2B9NGP
         jDoQ==
X-Gm-Message-State: AOJu0YwTFWpxKisxjPjvqvYNQDcfTv8lhevTxaqfl9SsZ4idb8m2gpo1
	rDoX2zCgZnjZvkOJ430184dX9mm4rXpJVGdzjgo8Kgn2tIeGEJZouPs=
X-Google-Smtp-Source: AGHT+IGP1KiplQ/qgPc7TMxXbjMhS7H7fUEZDJsoyP3E3rpMgXtfgahPF4Oi76zGF4K8S3scH3QQyh80VQQd9dFswzQ=
X-Received: by 2002:a17:906:cb95:b0:9bf:30e8:5bf9 with SMTP id
 mf21-20020a170906cb9500b009bf30e85bf9mr8759112ejb.4.1700000239780; Tue, 14
 Nov 2023 14:17:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Simon Glass <sjg@chromium.org>
Date: Tue, 14 Nov 2023 15:17:03 -0700
Message-ID: <CAPnjgZ3=HxH10KYkrE+1mYtPiYe4KJMD+zekTjpq6oq_qZ5kxA@mail.gmail.com>
Subject: DMA not supported below 4GB
To: Devicetree Discuss <devicetree@vger.kernel.org>
Cc: Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

Some devices do not support DMA above 4GB. Is there a way to express
this in the devicetree?

Should we add sometimes a 'no-dma-above-4g' property?

Or should we be using dma-ranges for this?

Regards,
Simon

