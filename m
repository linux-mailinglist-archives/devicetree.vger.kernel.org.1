Return-Path: <devicetree+bounces-274798-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oKLWNvAds2mDSAAAu9opvQ
	(envelope-from <devicetree+bounces-274798-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 21:11:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FF86278904
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 21:11:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E6BFB314D739
	for <lists+devicetree@lfdr.de>; Thu, 12 Mar 2026 20:07:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55D48402423;
	Thu, 12 Mar 2026 20:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="MbG9nDAJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25202402435
	for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 20:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773346031; cv=none; b=QAA2IPYLzo4Pz/tWqyeQnIF9NjQuj44TzL6dWVDShVoMJ9b/4uFAqe10KZYkNQw5onc7zauQHCP7o/6bUqQhxkinzZ5Dd1fNGC0UVvrluqZWtpnsA3MWY/5bewQ8x2jJCGppSDnT+04oFMOGgRoVVzgDICuyeAPBaZbp/txKgUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773346031; c=relaxed/simple;
	bh=lKJ2mS8qshYtbORsyK0ngNUDnpsbzs9HMnnIPPn7MQw=;
	h=MIME-Version:Content-Type:Subject:From:To:Cc:In-Reply-To:
	 References:Date:Message-Id; b=YyTWJFUf6G4Qd9DqbL7ykrwTseoBM111y67DXjtPoDlEaKJO5uijivkpNOnYVslWjQi9MR2itQKggesmOvjNgAdrjavXN28FrO2pwEROOz7Emo21dl+rEKeXkecYV2kwlRA9G5FuW3SMq4nnfHNypZOYbzEfpggy7OeuTpsVFMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=MbG9nDAJ; arc=none smtp.client-ip=209.85.160.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-4043b27ddeaso951800fac.1
        for <devicetree@vger.kernel.org>; Thu, 12 Mar 2026 13:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773346028; x=1773950828; darn=vger.kernel.org;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r+y1WK9bKYEMzE5cM7mHmluwniDdPir3jTdVAfeucGs=;
        b=MbG9nDAJG8oXVSVU8t/6DSIZFv7mTU2fUcI5uV5nA9/sa7PdWx7kcMNZDg1kPYzS6e
         1NWXFt74kSIqAU1QrJ/C7q2k+ZPTioNZHDXu4XYborZ/1HK17MKWCJjnKm+oQ2DtAHL8
         swpCIQEM2o8hOD3u9K7jWdIvHEZVVvwXw7KdsDjqLERZFiZKXGX2pu2IQP4V0RxbHghh
         S2cI6nb8clmayty3SLl4XZflwpd3YjiUC4fvn3giwjua4pDYAtjH0RpK8aaSMp5vGXVL
         dGYTKYzofzEpthE3kXGR1FnIG1EmLRNqYgax7mtvM1x7Q8+gpJOsn9DTJq93ESUmy7ZA
         lI/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773346028; x=1773950828;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=r+y1WK9bKYEMzE5cM7mHmluwniDdPir3jTdVAfeucGs=;
        b=sADk/d3HaFcTa4PK70ixPycjnXk2W8zZCZLRI9I37aXHJJ7MDSjl72+lY7WbF3K1/2
         1pc3TdigqSTs6fS8Apyo1a0SVgciNHPOycBnLJ/oCl9bdHN53UCWID4auOSn2hEr9sfB
         IHDmpZE2i/EjZaA87aKC1pDZiYfPpirnvwanPYrqTLHqqbVykIlSXsIn3gdRW/ngg1aZ
         zQobp+emITSZQ+d9x6sVVQp+p/+Ea4Ysz0yS94mPSUbECi58Xbc+SxukFHEg8KPstgDe
         LTv0O6+zEX1SB4TNA6vR9bYIohZGwMcmLYXtsX1SOS1PDWwUOfZ4IEFF2iGDYrfFBF60
         iCbQ==
X-Forwarded-Encrypted: i=1; AJvYcCUmdJ+U0GIZh87GN1uS1lcYYIkE5Q9XTf4LwaOFUzbbGoM9f7GjniejZ3hgKxVU0yr5VDPsmAdDD1jc@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5ADSk9yqAgZoydhQxuuqNUvXo4qa6xca7s0pi8u3VLwIQXTY6
	rZ2oSUHByxVo8goDas5r2qA6y6wVX7lG/xWAs9Cikdg0GuGUN9IRg9gHcpuKabfIi/k=
X-Gm-Gg: ATEYQzx1FD8uXcQXUdASx0+GiK08dwilBStoXPsdmFdzwzZk0OWzX4dhQz+RQnF4XjJ
	l99F6BYnt7D22jiFPK0TfeE9WnXDHxdLc7pCB7rh4Pm3mjvzMnBKoVjol//SLSsdRMTnwSEMXkv
	+Yt4hE4tj+hOVGM8YLKsdvwpPGKlLVAZubV4WjKgvobrWubRTUf66txbWXnkoVYwiFO0E1rmW49
	wmiUUhGd/TTP9Cuu2pXOz5DNKjrZC5NnS+/mDK0AYxXm9Jvmn76BtAMaUIy28RTDmDzjRBAQnQV
	HM63rI0Rqvxesj1CaXLg5ohezPPiKuEDiofaB4TuKOngMrzGxWmbh4VU2PfXVRZ3JCJ2D7IVHoQ
	v0A1ZArBOd6sIYyEz1Zn0EbTJ/hTniveQR/69OohI/17PNnHSzqJSg34Uwhjc6GoHEkn3ZyotXG
	DWbRjI7BUZwMcEB7zojU/LvA22uIjD
X-Received: by 2002:a05:6871:3864:b0:409:7a01:6e2f with SMTP id 586e51a60fabf-417b906d7e5mr406126fac.11.1773346028068;
        Thu, 12 Mar 2026 13:07:08 -0700 (PDT)
Received: from [127.0.1.1] ([2600:8803:e7e4:500:1f95:f82e:8747:8137])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4177e6c7885sm5600081fac.17.2026.03.12.13.07.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2026 13:07:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Subject: Re: [PATCH v6 00/18] Add support for MT8189 clock controller
From: David Lechner <dlechner@baylibre.com>
To: "irving.ch.lin" <irving-ch.lin@mediatek.com>
Cc: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Richard Cochran <richardcochran@gmail.com>, 
 Bartosz Golaszewski <brgl@kernel.org>, Chen-Yu Tsai <wenst@chromium.org>, 
 Miles Chen <miles.chen@mediatek.com>, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
 netdev@vger.kernel.org, Project_Global_Chrome_Upstream_Group@mediatek.com, 
 Qiqi Wang <qiqi.wang@mediatek.com>, sirius.wang@mediatek.com, 
 vince-wl.liu@mediatek.com, jh.hsu@mediatek.com
In-Reply-To: <20260309120512.3624804-1-irving-ch.lin@mediatek.com>
References: <20260309120512.3624804-1-irving-ch.lin@mediatek.com>
Date: Thu, 12 Mar 2026 15:06:36 -0500
Message-Id: <177334599652.4124794.2284323207748123029@freyr>
X-Mailer: b4 0.15-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=515; i=dlechner@baylibre.com;
 h=from:subject:message-id; bh=lKJ2mS8qshYtbORsyK0ngNUDnpsbzs9HMnnIPPn7MQw=;
 b=owEBbQGS/pANAwAKAcLMIAH/AY/AAcsmYgBpsxzPi+0zWeulMgYec/oNHyb8sbOm7PTreogHt
 ekbB22puQqJATMEAAEKAB0WIQTsGNmeYg6D1pzYaJjCzCAB/wGPwAUCabMczwAKCRDCzCAB/wGP
 wDfIB/91n7afDNKVMM1YVnaRi8vpX9xoS/2fQLT+wzZC/3m9wr58g42+Hy7F1+SywRjBf8f8CWn
 BlwpL0zR+GBEnDlPiWeCojMa/oNotD6CWbl2gXYC33sllryI2rkGy18PxfunAxpNBAm06vWz6Lr
 YvsvuBJ7kEUcqf8+DH+bgCKLL/2fWxaI6Cpj/rggJGywF1rJMvK/5qwFPiuIUVDAV3xRL09Firz
 uDocVTpeY9TqTi2Nq1MU2MfD+UH2EKd/SzRjDlgDoyOmTefufsLWnJCeARld89Zvg/NIOTGWdkC
 WVTaGeyWsXb+6V8GO7rcJ8/3R5W+W5sdRGFjjE3ewiwYd1Gd
X-Developer-Key: i=dlechner@baylibre.com; a=openpgp;
 fpr=8A73D82A6A1F509907F373881F8AF88C82F77C03
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274798-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,gmail.com,collabora.com,chromium.org,mediatek.com,vger.kernel.org,lists.infradead.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,mediatek.com:email,baylibre-com.20230601.gappssmtp.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3FF86278904
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 09 Mar 2026 20:04:42 +0800, irving.ch.lin <irving-ch.lin@mediatek.com> wrote:
> From: Irving-CH Lin <irving-ch.lin@mediatek.com>
> 
> Changes since v6:

So this should have been [PATCH v7]?

> - vowpll/aud_adc_ext are fixed clocks in dts, remove from bindings.
> - Remove unused clocks (clk_vlp_sej_13m, clk_vlp_sej_26m)
> - Fix confused naming: vlpcfg and vlpcfg-ao
> - Correct naming in vlp-clk driver: vlp_fmipi_csi_up26m, vlp_pwrap_ulposc_sel
>

-- 
David Lechner <dlechner@baylibre.com>

