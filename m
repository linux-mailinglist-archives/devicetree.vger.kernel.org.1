Return-Path: <devicetree+bounces-66481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B48858C33B1
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 22:09:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E515E1C20E37
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 20:09:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CACC8200C7;
	Sat, 11 May 2024 20:09:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=psihoexpert.ro header.i=@psihoexpert.ro header.b="P4Bcr8Bz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx1.wiredblade.com (mx1.wiredblade.com [162.216.242.37])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90B0E200C1
	for <devicetree@vger.kernel.org>; Sat, 11 May 2024 20:09:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=162.216.242.37
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715458173; cv=none; b=uQJCoqeQH0rd9tYWIwmhjCyzW7r2X1nwr6o+UFKiD/k06JdRqB0yyQ19hF+YaPlS+q9XprCzBoOiwcilcCXlV+oHjTzLkKPYINe3zNguFEaGYzlRv0WH+kzhkkBWPljD6vf6uF5NgYypi87sfUQJejObdNGA4/4rZq7+whAs5vU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715458173; c=relaxed/simple;
	bh=fYO0DGCAhN4g90QR+5hW7cKau4VU3epu3UDd2KH3UJw=;
	h=MIME-Version:Date:Content-Type:From:Message-ID:Subject:To; b=nIQNe6NIus8Jt4YOOsvHBiz72IpuvZj6zVJptbgN7z1H0Y+ABxC8QjmREzlydXSU+Um55RTkCM3GO3udVCrV1MpgkO9OrRdrzKT6j58i/LEuqmkObzrQMAkfLaNIYyIQ6s/8YbeJQbFBfk3BENPU02sqvIbFitOIDEPYFwNzTYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=psihoexpert.ro; spf=pass smtp.mailfrom=psihoexpert.ro; dkim=pass (2048-bit key) header.d=psihoexpert.ro header.i=@psihoexpert.ro header.b=P4Bcr8Bz; arc=none smtp.client-ip=162.216.242.37
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=psihoexpert.ro
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=psihoexpert.ro
dkim-signature: v=1; a=rsa-sha256; d=psihoexpert.ro; s=dynu;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:MIME-Version:Content-Type:Content-Transfer-Encoding;
	bh=XD4FEX0rZ4nQHrolPtOuCfriJs3CdycVbbhKh1Ik+u4=;
	b=P4Bcr8BzW7HE56tyb0G3J95EL6sp0A3WhKo9KWHgOGN6H0w1lLa6UnMjqYyKL9KpOZWGGz5bLQKk2SPZhMQCDHb5PDeMppMRp7CWr+tLHkPnXlMcUxLJgn3EpqFhhEZVMl92pdkM352YygCT6mJVwEcI/5IG4YGuHU1zi95q41AwnRY3ydDC0mmkBWdzEP8520M3Ts686hX1EYYMwtanec2CkAKQisu7da2U+x28FhB1Rl+DAvkqGpj8dp
	ONTXTs+WZmgob7+M5Vy519K5dowiHTH90f3txWakjextVqPst4ruNZmju5BkOWZnbzf8CSOzHf/tTwA1slZmx7PHKzJg==
Received: from webmail.dynu.com (webmail.dynu.com [162.216.242.204])
	by mx1.wiredblade.com with ESMTPA
	; Sat, 11 May 2024 20:09:29 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Sat, 11 May 2024 20:09:30 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: RainLoop/1.16.0
From: m95d@psihoexpert.ro
Message-ID: <46ea55652f8bcdef51d5c552902fd0cc@psihoexpert.ro>
Subject: devicetree for Turris Omnia is missing i2c frequency for
 atsha204a
To: devicetree@vger.kernel.org

Hello.

Booting kernel v6.6 I get these errors in dmesg:

atmel-sha204a 6-0064: failed to read clock-frequency property
atmel-sha204a: probe of 6-0064 failed with error -22

I'm attaching a patch to fix it.
It adds 1MHz clock frequency to the i2c devicetree node where atsha204a i=
s connected. This is the max. supported frequency according to the atmel =
sha204a specs sheet.
Tested. Works.

Thank you.

diff --git a/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts b/arch=
/arm/boot/dts/marvell/armada-385-turris-omnia.dts
index 7b755bb4e4e7..64caabc81585 100644
--- a/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
+++ b/arch/arm/boot/dts/marvell/armada-385-turris-omnia.dts
@@ -378,6 +378,7 @@ i2c@5 {
 			#address-cells =3D <1>;
 			#size-cells =3D <0>;
 			reg =3D <5>;
+			clock-frequency =3D <1000000>;
=20
=20			/* ATSHA204A-MAHDA-T crypto module */
 			crypto@64 {

Signed-off-by: Marius Dinu <m95d+git@psihoexpert.ro>


