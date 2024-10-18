Return-Path: <devicetree+bounces-113025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 797D69A45D1
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 20:25:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 191032822F1
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 18:25:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 070B620CCE3;
	Fri, 18 Oct 2024 18:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="OBafmOnS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F4892040BE
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729275775; cv=none; b=N6loaQZoMJVUT1H7NfF9qJt1YKZRhbrtmCvt0evt0Eu+L2wxBfkXzrHf2IZDxEpaXwV80Zbhht9F6ZChfX/0BL3u06aJUGWPmGalV1n76+2bCqI/cZ7nfM9KabjrvPZfYBjw66OclLSkndc6soJsmPNAQPWBUZmFBIcirJ4jAko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729275775; c=relaxed/simple;
	bh=YPE2wfgFUpfGjCt7I7YEVirC1JDFDUT1zUe9c6pGcAQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=f5O9UX09cY8M9jLSSbVVvyYDgC0smaq/AfxdseXIN1VgRJm8S5gdjcfMNGlCPsrKH98gPgMPXrNfQ+1l+Bp6dd0zfv9QzDbnJsZapt6skiBzywr5X+uSSSroPsuO3CI59h7im4B3L7FDiTwdQlGDKSxiV7GigpMYTkUCiTkiunY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=OBafmOnS; arc=none smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-7b13bf566c0so149097585a.3
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 11:22:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1729275772; x=1729880572; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QoeLr+Env9OxeJz6wgxQ3SDKr6mSRXZtgxBKlhvoc7U=;
        b=OBafmOnS/6vCZwnDJ7rIbRgB33qnP0gg081Mr/jH6SNDvwfvMY+DC4asd6nBk3HfEZ
         mJL/WGoJLn7ujKqgzzfJxlm1XDsF+w+kwIklN0XHERx1L+xpHGgJ56GRygbuZrFcIlUL
         7xEY/3sg+Q0fVYUjOu26CM2vZVL0nBXqoDTGY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729275772; x=1729880572;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QoeLr+Env9OxeJz6wgxQ3SDKr6mSRXZtgxBKlhvoc7U=;
        b=dPjPmoA3fwA0YfLhJMeJaSkwsavpVcDLoD+oAQPOB0a+jQvTHaWX0T5Rfn1Ga12qY6
         xsrWVJvcLvw9xDlfUzy+Nt2ZagAaNvThZt6uF7U5FU1sfovJJBeYZKTs7WKaI/cN+ne2
         YoEEdazo9Ng4Y2US49fkHh0BsZnQuqdjMRWixiYzm5XNGIFKlJIfSdkerreklYCWsXqg
         nmvT86uL/w3CwRQ+a6hMYp/f1e9u9pveacs7lWLBIhQre4m6yXXQXAHMZQfzlVRX4zpg
         YVAfvH1fr3DlJbsUtQe733SGbf+Dq/aRZC+QhmBrBZxW8HtDTIDK2KMOUoh/2BK9FYKw
         3u6g==
X-Forwarded-Encrypted: i=1; AJvYcCVUay9/4XYAwpa0s1d41PfXYpWPSG4/vnJyePL1RNkUFdfs2P83jg7hn4HNtwddgdm34yPns6kehwpZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb7eSiqM7ftUY/NU0q/8uP7IGDxxx+uLsOm21kfg9f7neGIko/
	vZnhC58YleMnnF9esHH4MPsdGZI40UC48GU/hZDBJlgXiZA2cnKXXr7PBc6ARw==
X-Google-Smtp-Source: AGHT+IHc/HKas0ASDn+E7LNSiE4UY9i52NAvrSum+6BgLJ0cc3r86rr1PHaN99ZIt0zPccg2V59prQ==
X-Received: by 2002:a05:6214:4984:b0:6cb:d583:3765 with SMTP id 6a1803df08f44-6cde14c2817mr34582426d6.1.1729275770517;
        Fri, 18 Oct 2024 11:22:50 -0700 (PDT)
Received: from stbsrv-and-02.and.broadcom.net ([192.19.144.250])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6cde114d782sm9307616d6.46.2024.10.18.11.22.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 11:22:49 -0700 (PDT)
From: Jim Quinlan <james.quinlan@broadcom.com>
To: linux-pci@vger.kernel.org,
	Nicolas Saenz Julienne <nsaenz@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
	bcm-kernel-feedback-list@broadcom.com,
	jim2101024@gmail.com,
	james.quinlan@broadcom.com
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS),
	linux-arm-kernel@lists.infradead.org (moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE),
	linux-kernel@vger.kernel.org (open list),
	linux-rpi-kernel@lists.infradead.org (moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE)
Subject: [PATCH 0/1] RFC: Need feedback on PCI dt binding property
Date: Fri, 18 Oct 2024 14:22:44 -0400
Message-ID: <20241018182247.41130-1-james.quinlan@broadcom.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

We'd like to get early feedback on a dt binding property.  We cannot
submit the code with it as there is a backlog of commits that must
be submitted first.  We are just looking for some initial comments.

Jim Quinlan (1):
  RFC: dt bindings: Add property "brcm,gen3-eq-presets"

 .../devicetree/bindings/pci/brcm,stb-pcie.yaml       | 12 ++++++++++++
 1 file changed, 12 insertions(+)

-- 
2.43.0


