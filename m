Return-Path: <devicetree+bounces-154119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 22756A4EE68
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 21:32:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 406017A8D2B
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 20:31:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8191D1F8BCC;
	Tue,  4 Mar 2025 20:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=yandex.ru header.i=@yandex.ru header.b="IMEdjYYG"
X-Original-To: devicetree@vger.kernel.org
Received: from forward502d.mail.yandex.net (forward502d.mail.yandex.net [178.154.239.210])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE1E12641E2
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 20:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.154.239.210
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741120307; cv=none; b=YG1o4sJk9HKPWQ3i7V9i6ZV9fNt7paT8ocYUBev/gqwCc2tBhpXRwPlHwJFOh2r8lzLFhf9fQ87oW6RHFc6H6gxRAA6cjG8LvD9+UwaBIV4dIRT313tnuO66QFJSIyMQYsSIcraKgLtDxiM3azm6L/kxS2vVAO4UAykbo7PJivo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741120307; c=relaxed/simple;
	bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d0tcbg+5fDnyd2niOwF5WlpQJlv6cn0XabWuYMUU6IQsnKr4RfZ9+6HNAWgIhFbsIiLXsYgvq88fk+h6I+eB7hhHjTIN7piGL7Hz+UNf4Gz7p3M7Tz3kcoQtlEWwE5eBlSqBF3TrMsIN25+OCiVjwZgBTjX8JB0t4J6o52sUBxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yandex.ru; spf=pass smtp.mailfrom=yandex.ru; dkim=pass (1024-bit key) header.d=yandex.ru header.i=@yandex.ru header.b=IMEdjYYG; arc=none smtp.client-ip=178.154.239.210
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=yandex.ru
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=yandex.ru
Received: from mail-nwsmtp-smtp-production-main-59.klg.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-59.klg.yp-c.yandex.net [IPv6:2a02:6b8:c43:c14:0:640:86a6:0])
	by forward502d.mail.yandex.net (Yandex) with ESMTPS id 2105061534
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 23:26:10 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-59.klg.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id 8QqpLMmLm4Y0-gQ1UDwrP;
	Tue, 04 Mar 2025 23:26:09 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
	t=1741119969; bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
	h=In-Reply-To:Message-ID:Subject:References:To:From:Date;
	b=IMEdjYYGDB8OfJpDpUgD7WmTMYXBc9n84RNpz7045lQx+YUeNHL7wBe869kGJ5vRp
	 DI1AExh5MrOHQ+UE/EH6FPY481FqC7aeDJ2ez0PWVr2SvMjSY1a85lWo2PsIYBP8cH
	 ncGs072H38ORBRgywQYA5gPxlbEZCPkAxZ5CRbTE=
Authentication-Results: mail-nwsmtp-smtp-production-main-59.klg.yp-c.yandex.net; dkim=pass header.i=@yandex.ru
Date: Tue, 4 Mar 2025 23:26:08 +0300
From: Maksim Tarelov <tarelovma@yandex.ru>
To: devicetree@vger.kernel.org
Subject: unsubscribe
Message-ID: <Z8dh4FJoRLd27gjb@ladoga>
References: <20250304190114.4C796682F1@forward206d.mail.yandex.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250304190114.4C796682F1@forward206d.mail.yandex.net>



