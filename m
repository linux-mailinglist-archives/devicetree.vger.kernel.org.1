Return-Path: <devicetree+bounces-105019-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD38984EB2
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 01:08:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B1872810DF
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 23:08:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F051176FA5;
	Tue, 24 Sep 2024 23:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicksendemail77.com header.i=@quicksendemail77.com header.b="Ac/GeAfr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.quicksendemail77.com (mail.quicksendemail77.com [193.226.76.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 807ED43AA4
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 23:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.226.76.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727219322; cv=none; b=eBlPGQph2s5l4FIyw0bl+FOqwWEUQEO1kIFpDhnEFqEvKsDte59XVI+TgUtY66MP4kPyDHSu650LGyUk3DRCN/1ZT9XNOzBw4NSkOfuqCRaldBtpsGkCO8WD9w+tPf60YSc+JoxXs5jULCBA5S1OR8pljhcCUXcAy5fXNbSYTvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727219322; c=relaxed/simple;
	bh=DDh04/oWMSUS0DUm5tK5te3/jdHYh2eew7Yu/t9Fr40=;
	h=From:To:Subject:Date:Message-ID:MIME-Version:Content-Type; b=g+U6R0zjnoPo0cPctrJS2ZK0wIJp22u5qnPpasjftpMKqKF0wHpX0kpjs4fbwrTe+YCobRFbBpBKx/Qn9Jnw0d8J7cwsrqNBCi6psp+h/QWNeVxYBlFqCeKTWDdOJNEzb4pYAGMlKMh6medGyyJERXwsOu+Iuy0bZHB9bJgKwxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=quicksendemail77.com; spf=pass smtp.mailfrom=quicksendemail77.com; dkim=pass (2048-bit key) header.d=quicksendemail77.com header.i=@quicksendemail77.com header.b=Ac/GeAfr; arc=none smtp.client-ip=193.226.76.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=quicksendemail77.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicksendemail77.com
Received: from quicksendemail77.com (unknown [172.245.243.31])
	by mail.quicksendemail77.com (Postfix) with ESMTPSA id 2B5F755E78
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 03:34:52 +0530 (IST)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.quicksendemail77.com 2B5F755E78
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=quicksendemail77.com; s=202408; t=1727215492;
	bh=DDh04/oWMSUS0DUm5tK5te3/jdHYh2eew7Yu/t9Fr40=;
	h=Reply-To:From:To:Subject:Date:From;
	b=Ac/GeAfrzJtxo1qOnKv9KRruf7Ql31DYzDMavuE1MgyZs0qyA1sfOqGQ05mvjEcoq
	 9rK0DTYTjQjtSK700uNBwIfrQ37/yFET/Kfogi7OYzSl7QBm7FNnnD+fg4QfIKYAMZ
	 qqSLksgIk3xkw+V+Fa/yayTtMkFuRIIg38F6fimgc1DGZAW6PEmG7xyScvYj4C0pXk
	 G31Etp0yT0+bceHbQdD/ElBakei6mYnyhXpNc5nOQczRbpxawX2vVJIsTjnJJ2rMMd
	 pVDH0qmIrK9K+ORGkjVXW2/PYICnIr9AaavfdruTSzh1vcongJxl4UE6g2rQ8tehrK
	 LkiyRAfpU9MeQ==
Reply-To: info@marvin-group.net
From: Marvin Jack<info@quicksendemail77.com>
To: devicetree@vger.kernel.org
Subject: New order
Date: 24 Sep 2024 13:04:51 -0900
Message-ID: <20240924130451.518EDE6BC13FFB07@quicksendemail77.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain;
	charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.6.4 (mail.quicksendemail77.com [0.0.0.0]); Wed, 25 Sep 2024 03:34:52 +0530 (IST)

Dear devicetree , .

Please email us your company's most recent catalog. We would like
to make a purchase from you.
Looking forward to hearing from you.

Marvin Jack
Export Manager=20
MARVINSGROUP NL
Zeekant 125 - 3151=20
HW - Hoek van Holland
Tel.: +31 75 7112400

