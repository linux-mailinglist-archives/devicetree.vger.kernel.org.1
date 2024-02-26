Return-Path: <devicetree+bounces-45726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C286286676F
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 02:10:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EC5721C2061D
	for <lists+devicetree@lfdr.de>; Mon, 26 Feb 2024 01:10:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C632F2CA7;
	Mon, 26 Feb 2024 01:10:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx-n07.wc1.lan3.stabletransit.com (mx-n07.wc1.lan3.stabletransit.com [207.246.249.47])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E704B7460
	for <devicetree@vger.kernel.org>; Mon, 26 Feb 2024 01:10:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=207.246.249.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708909818; cv=none; b=IcTIlWLhdzxnwUAIEvosilz7MeuXuBZA0u7+mb/bbHqYh9+4Q8+BFqlYXkAKmhpf6mBraLtpc6AbwgRHvlmZVTf9YAo/Jc563kBGIh0oL1SNPFPVcJtl6NeB2y1j9ZgFZzIdeaJy25YMMmD+lBJpGjM+g069GOLAT4+Ehm7+n8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708909818; c=relaxed/simple;
	bh=tkhXdxRL5fKL9l/2iZW3kfpb36uyHXJpaBaIb1gc+eI=;
	h=To:Subject:Date:From:Message-ID:MIME-Version:Content-Type; b=oENK3N62Fr/f8Iz5Udebfs/ZNfv0rNsmM4wieKrgvpG/Tddgswxog4nhM6+dPNgJtwY0cRQUjg+qQRiNKDip6xEcA8ZxtUrosoIMRNHv9fuwLQEW/tqe+Q2E7DD21BSdjTYfXlNeecNmehzRsdFzRZ8SHKsCXTLbeD3i+lyhqHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=duqsm.com; spf=pass smtp.mailfrom=stabletransit.com; arc=none smtp.client-ip=207.246.249.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=duqsm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=stabletransit.com
Received: by mx-n07.wc1.lan3.stabletransit.com (Postfix, from userid 113)
	id 986AD44A96; Sun, 25 Feb 2024 19:02:17 -0600 (CST)
X-Spam-Level: ***
X-Spam-Virus: No
Received: from php-v016.wc1.lan3.stabletransit.com (unknown [10.30.221.64])
	by mx-n07.wc1.lan3.stabletransit.com (Postfix) with ESMTP id BDEF851AE7
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 19:02:16 -0600 (CST)
Received: from duqsm (uid 1887387)
	(envelope-from duqsm@php-v016.wc1.lan3.stabletransit.com)
	id a0e4e
	by php-v016.wc1.lan3.stabletransit.com (DragonFly Mail Agent v0.13);
	Sun, 25 Feb 2024 19:02:16 -0600
To: devicetree@vger.kernel.org
Subject: [Shared Post] Yo Rita dresses up the taco, reinvents taste
X-PHP-Originating-Script: 1887387:class-phpmailer.php
Date: Mon, 26 Feb 2024 01:02:16 +0000
From: =?UTF-8?B?RGVhcjogSG9wZSB0aGlzIGVtYWlsIGZpbmRzIHlvdSB3ZWxsLldlIGNhbiBvZmZlciB5b3Ugb2NlYW4gZnJlaWdodCBzZXJpY2VzIGZyb20vdG8gY2hpbmEuR09PRCBTRVJWSUNFIEFORCBDSEVBUCBSQVRFUyBhcmUgb3VyIHByb21pc2VzLkNvbnRhY3TvvJpqYW1teUBtb3JpcmluLWNhcmdvLmNvbTtNQi9XRUNIQVQ6MTM5MTgwNjYzMzY7U2t5cGU6amE=?= <wordpress@duqsm.com>
Reply-To: =?UTF-8?B?RGVhcjogSG9wZSB0aGlzIGVtYWlsIGZpbmRzIHlvdSB3ZWxsLldlIGNhbiBvZmZlciB5b3Ugb2NlYW4gZnJlaWdodCBzZXJpY2VzIGZyb20vdG8gY2hpbmEuR09PRCBTRVJWSUNFIEFORCBDSEVBUCBSQVRFUyBhcmUgb3VyIHByb21pc2VzLkNvbnRhY3TvvJpqYW1teUBtb3JpcmluLWNhcmdvLmNvbTtNQi9XRUNIQVQ6MTM5MTgwNjYzMzY7U2t5cGU6amE=?= <judy@centrica.co.uk>
Message-ID: <43ea666a7d8c936886f9a2dcf9ffd947@www.duqsm.com>
X-Mailer: PHPMailer 5.2.22 (https://github.com/PHPMailer/PHPMailer)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Dear: Hope this email finds you well.We can offer you ocean freight serices from/to china.GOOD SERVICE AND CHEAP RATES are our promises.Contact：jammy@moririn-cargo.com;MB/WECHAT:13918066336;Skype:ja (judy@centrica.co.uk) thinks you may be interested in the following post:

Yo Rita dresses up the taco, reinvents taste
http://www.duqsm.com/yo-rita-dresses-up-the-taco-reinvents-taste/


