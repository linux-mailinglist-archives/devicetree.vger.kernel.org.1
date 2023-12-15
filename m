Return-Path: <devicetree+bounces-25833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DF19A814B91
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 16:18:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7FFDB1F23F16
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 15:18:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B35DD3A8D5;
	Fri, 15 Dec 2023 15:16:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="bxskg0vQ"
X-Original-To: devicetree@vger.kernel.org
Received: from madrid.collaboradmins.com (madrid.collaboradmins.com [46.235.227.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2930A3BB30;
	Fri, 15 Dec 2023 15:16:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=collabora.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1702653400;
	bh=frcCV1k9oG9oKj3dpUqdJg1PxRT2RSN/XKdLCPjaYaY=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=bxskg0vQhA7slrajO46bihV+I0+uaTjfjUJ9LPJbFyICDyqWnNT9UL3VYraw4JhfL
	 smPMkdX3Yc24/cpOzQDoBGD7cgyqXv/6lDFAa1NY5VC8gf0ptvgSJ2LGX7G48lEpdR
	 WSuDQoQUI9Hvw6vif718JAO6HNv6zhLVb5UHlIC5GBRqaRZFJeUfFX2vk2kl0C/aDo
	 ZBMWoxP7AdUo3OAEdRcN3LYJLXfnWKLzWLedKUhzv86iILyu4rTStipQdtIpo9svNG
	 WNWSnS8VM4snAcE6vslwSt4w5/E+XhE/XOGM4xWWpyTtXW9DduwFQoH5KY6i/k09GB
	 hhTug6I7mkSqg==
Received: from beast.luon.net (cola.collaboradmins.com [IPv6:2a01:4f8:1c1c:5717::1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sjoerd)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 18EBF3781FD7;
	Fri, 15 Dec 2023 15:16:40 +0000 (UTC)
Received: by beast.luon.net (Postfix, from userid 1000)
	id A14E998BB175; Fri, 15 Dec 2023 16:16:39 +0100 (CET)
Message-ID: <67f183ea01430224ce305d7e6267c9b5ef114923.camel@collabora.com>
Subject: Re: [PATCH v2 0/3] Moxtet bus fixes
From: Sjoerd Simons <sjoerd@collabora.com>
To: Gregory CLEMENT <gregory.clement@bootlin.com>, Marek
	=?ISO-8859-1?Q?Beh=FAn?=
	 <kabel@kernel.org>
Cc: kernel@collabora.com, Andrew Lunn <andrew@lunn.ch>, Conor Dooley
 <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,  Rob Herring <robh+dt@kernel.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
Date: Fri, 15 Dec 2023 16:16:39 +0100
In-Reply-To: <87fs03cyki.fsf@BL-laptop>
References: <20231128213536.3764212-1-sjoerd@collabora.com>
	 <87fs0ceoif.fsf@BL-laptop> <20231208161724.5f4f626a@dellmb>
	 <87fs03cyki.fsf@BL-laptop>
Organization: Collabora Ltd.
Content-Type: text/plain
Content-Transfer-Encoding: 7bit
User-Agent: Evolution 3.50.2-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0



