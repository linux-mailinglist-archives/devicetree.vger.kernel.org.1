Return-Path: <devicetree+bounces-32803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F753830A8D
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 17:10:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A03B6B25617
	for <lists+devicetree@lfdr.de>; Wed, 17 Jan 2024 16:10:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6497D249E9;
	Wed, 17 Jan 2024 16:08:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="FJJlgoNK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8839E23772
	for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 16:08:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705507718; cv=none; b=l+VPl7c3WzSj6H1Ry8o+6OizKgn3Msq06p0bUpPwHF2/ha4SuoKoMXD8njVQsx1jKA8UYBOFV84DNZH+tAXRdlrYkCwbdR67ST6PRaLxCVqk4b3WJOIPJyje9xhuwlI/C62txbg+3UMON9cpNqUBNYJeMt3gX7/+O2kmr5DOY/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705507718; c=relaxed/simple;
	bh=N8nSlGpY+h0yDVzKyyy2ahDrdLPIziiOuPJg6GZ4M/s=;
	h=Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Gm-Message-State:X-Google-Smtp-Source:X-Received:Received:From:
	 To:Cc:Subject:Date:Message-Id:X-Mailer:In-Reply-To:References:
	 MIME-Version:Content-Transfer-Encoding; b=VMxXKwzwVMjsajErEbjT1Qq77IWkNsvseXpmvrFPGxg0/o7lmqbVU+Hol8WMBl9FDYcuoEG7Zl//SMPkye2M11BZcGxXLY10yj7NVLi0jWTJtIQLNdzx5B+o+gyMY4FOvkl5qzqXv6g7EtGHfiFR0XbKTehVPdCnna6axjnvpCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=FJJlgoNK; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2cdeb80fdfdso12955801fa.2
        for <devicetree@vger.kernel.org>; Wed, 17 Jan 2024 08:08:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1705507714; x=1706112514; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ko9AldsNAGIySQ6r8IsXSCtLQ9r/1ys0AWCrWCqKA/w=;
        b=FJJlgoNKT3LU5UfqYlpOOGWKqIwmVOmtHxSdvM7fNQORfOrfcy0CzrMnZN+fWa+gYE
         j/g3yKzMzFhspGGE6cOAHSSnQbHj8WPd1quM/iAJdz3tpz+WkeO9P+LGeBkmWL7nrQX9
         5YpqPjxe6fexhKRdVKo+D7DRO5QGuDSUSNycI1eLOq0XpvUCrKD17q6x8oCkuebSgo4p
         gd+bUYf09oWtK7l7KKdAY9GsaYcrlrijgWZZDzC+LwWF9Fz2WlfizAXwdz1Y7Zv3shR8
         +wlgv4d8ahhed+H0qai6s5lNlm+yryZk2972V8AI4xNTvsP6St8RD2pI+Kl/xtAs6+Z5
         mW9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705507714; x=1706112514;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ko9AldsNAGIySQ6r8IsXSCtLQ9r/1ys0AWCrWCqKA/w=;
        b=Eqglpj21kBvo5tZ3JmmZdNISshQkIvkKipq19IJjA3AIVPDZb3QT5mqtDZKy6BtVC+
         OpQwYQMr9QFAW1kXVzXORy5MCAL05S8zv1SkDrptEpGPP15v3YVlEQ+lRP/e1QrUIG0p
         k4zOoois5X4d9bv99GOoeTk0rtArBjWDZR+UwML06EWfv04Xn8VwhYW+AwoLryyXcmRa
         rHOBLRMCxdxwOeD3PIGv5bkKfnz7vjVSx0BFTR8enHNYeVHWxflINnr4/+vkbPMxK1w/
         d3r4D6+hILGTlCJ+w7AGpeNc+XMNGILL4Cm3jOUAHUz5yGIM0PXJcHJ7l2kEBGMiApXw
         atvw==
X-Gm-Message-State: AOJu0YxbZ3ku6IUzdK4MnwlzP6DpSgDvvoR6iKEc+0eXfvoluluNzWkn
	rZYvsh/vwRVa/+EqMCpIPDWPSrD8PW8Nrg==
X-Google-Smtp-Source: AGHT+IH00GMnU28EnlPeGajWNZo/yfmgLAtVEq5+nkiN5uNxUQ5AichUQRHPt2D0pz/XGhDNycFPnw==
X-Received: by 2002:a2e:a40d:0:b0:2cc:8a2b:4594 with SMTP id p13-20020a2ea40d000000b002cc8a2b4594mr2168546ljn.23.1705507714754;
        Wed, 17 Jan 2024 08:08:34 -0800 (PST)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:d0b5:43ec:48:baad])
        by smtp.gmail.com with ESMTPSA id t10-20020a5d6a4a000000b00337b0374a3dsm1972092wrw.57.2024.01.17.08.08.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Jan 2024 08:08:34 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Kalle Valo <kvalo@kernel.org>,
	"David S . Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Chris Morgan <macromorgan@hotmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Arnd Bergmann <arnd@arndb.de>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	=?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= <nfraprado@collabora.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Peng Fan <peng.fan@nxp.com>,
	Robert Richter <rrichter@amd.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>,
	Terry Bowman <terry.bowman@amd.com>,
	Lukas Wunner <lukas@wunner.de>,
	Huacai Chen <chenhuacai@kernel.org>,
	Alex Elder <elder@linaro.org>,
	Srini Kandagatla <srinivas.kandagatla@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Abel Vesa <abel.vesa@linaro.org>
Cc: linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pci@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 5/9] PCI: hold the rescan mutex when scanning for the first time
Date: Wed, 17 Jan 2024 17:07:44 +0100
Message-Id: <20240117160748.37682-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240117160748.37682-1-brgl@bgdev.pl>
References: <20240117160748.37682-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

With the introduction of the power sequencing drivers that will be able
to trigger the port rescan, we need to hold the rescan mutex during the
initial pci_host_probe() too or the two could get in each other's way.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 drivers/pci/probe.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pci/probe.c b/drivers/pci/probe.c
index b7335be56008..957f7afee7ba 100644
--- a/drivers/pci/probe.c
+++ b/drivers/pci/probe.c
@@ -3122,7 +3122,9 @@ int pci_host_probe(struct pci_host_bridge *bridge)
 	struct pci_bus *bus, *child;
 	int ret;
 
+	pci_lock_rescan_remove();
 	ret = pci_scan_root_bus_bridge(bridge);
+	pci_unlock_rescan_remove();
 	if (ret < 0) {
 		dev_err(bridge->dev.parent, "Scanning root bridge failed");
 		return ret;
-- 
2.40.1


