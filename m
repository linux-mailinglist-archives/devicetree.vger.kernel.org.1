Return-Path: <devicetree+bounces-282354-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yP5gFKdHymkQ7QUAu9opvQ
	(envelope-from <devicetree+bounces-282354-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 11:51:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B843358941
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 11:51:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B77F43013A79
	for <lists+devicetree@lfdr.de>; Mon, 30 Mar 2026 09:45:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D96C93B47CF;
	Mon, 30 Mar 2026 09:45:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linux.spacemit.com header.i=@linux.spacemit.com header.b="OHTh3sQY"
X-Original-To: devicetree@vger.kernel.org
Received: from bg5.exmail.qq.com (bg5.exmail.qq.com [43.154.197.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F018D3ACA7A;
	Mon, 30 Mar 2026 09:44:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=43.154.197.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774863901; cv=none; b=fPaDz/8/r1HzX1ykCJLxc9s2S55Q5KNU58DJqn6Ipn8SK8C839b9cBj+mVZZ3KXOC4gOMGr5qBFw8cz11tFQl47IaboFQmShaIhGhyizxOVO2PbZ0huUi09P+5c+saf2vxO/GFaH1mbSokIzv0PTa2OoQz5wyXUgRk02MvPXKcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774863901; c=relaxed/simple;
	bh=iBCwyZpwamRARxbsN2N8EFmrOffuUA1+6BYYKd5CeEc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WozrU0o6DySMn3867TBr+3/h8ojukDUz9mpU/+ohCjGp47l4PBlHUiMxYVGh5wW/kRPDe51PISeqL+PAcWlTvFdkxpJPiEuvt8JTrRiMPEmrfloMT1kWPMxE5O8jSrYE8DllnM6KDA4rFQ2aFvY7ncya78nCOAowxmg3yFAILA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.spacemit.com; spf=none smtp.mailfrom=linux.spacemit.com; dkim=pass (1024-bit key) header.d=linux.spacemit.com header.i=@linux.spacemit.com header.b=OHTh3sQY; arc=none smtp.client-ip=43.154.197.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux.spacemit.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=linux.spacemit.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.spacemit.com;
	s=mxsw2412; t=1774863763;
	bh=mTpQwvg5Mz9FjX0WddBd0PpBVlFM1npPuFntNiLEgxA=;
	h=Date:From:To:Subject:Message-ID:MIME-Version;
	b=OHTh3sQYXm+rK3EPV3AyeF22RqnCrg94S6xu8CfhCh8ZijApaWkB/gUET0yCk4t/Z
	 CvtXfjSvcfliYuuQ7izJdYFUznlbKoAun/vP5FDuErT1QoPzw3E+cYIxH1105iC6me
	 9QM6M/xNfEwJrh8ZpH29814IdwIzoBH4rDzLyB3A=
X-QQ-mid: esmtpgz16t1774863753te80528ff
X-QQ-Originating-IP: R17bfHIhJDpspnCPy1NFP2dyutidDbHlsa0JPjeHPGk=
Received: from = ( [120.237.158.181])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 30 Mar 2026 17:42:30 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 17267774757820905902
EX-QQ-RecipientCnt: 20
Date: Mon, 30 Mar 2026 17:42:29 +0800
From: Troy Mitchell <troy.mitchell@linux.spacemit.com>
To: Shuwei Wu <shuweiwoo@163.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Yixun Lan <dlan@gentoo.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Troy Mitchell <troy.mitchell@linux.spacemit.com>
Subject: Re: [PATCH v3 2/3] thermal: spacemit: k1: Add thermal sensor support
Message-ID: <DF4450E7F5A1BB56+acpFhalHxjbA3d1v@kernel.org>
References: <20260119-patchv2-k1-thermal-v3-0-3d82c9ebe8a4@163.com>
 <20260119-patchv2-k1-thermal-v3-2-3d82c9ebe8a4@163.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260119-patchv2-k1-thermal-v3-2-3d82c9ebe8a4@163.com>
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:linux.spacemit.com:qybglogicsvrgz:qybglogicsvrgz3a-0
X-QQ-XMAILINFO: MlFTQbf74c0X8ovUWACn7Iogmr2oHDUhdSQLmQ5YLl1VxtGvXD3XGnU8
	3+2iI4SwvsXwB2uBfjgh8YCGE1Lp5XWrAxOe1uwUJj49KseKyARv90LsGskj/lW9N2bVnjz
	kq5AFyPeo7lMqwMPYOlD493y5X0GhTiY9pwLhjTBuph1KywbsDInuEY+2Nq5MSZXcTbFRGu
	0YxOSCNtX8ee56nrbubOHA6U0QjhgAazr6MA/Ji6WMUTuspUhnXs3n4/JLetnA+ZHPTuYdX
	L0mITTQzDArtwQDFPtBCUOC2gIxVgKimrCUlbO3J7eSrmNUlEN8CH9rJ5qKOdjVyEnMG7zD
	ZGDWR7i1G2RTf5fYUHV8B6DYbdnEdP78NBX4aL8ragIh3wOu8T7dGGT0p5iBpRzFZRgSuNg
	oWuCbarZjlq6f6laGhW66zmabJ4OM+4GpBOdit4w6feGzhzRyUmp4+dNbHARZ8oiv0gDk4l
	5a0E3z/5pd7QGrRbLuY7x1nhmVnz8lUUFJvYtD0Ri4/KdE80VaDzVqzhfWYqKCag7dswXJ8
	ZQWI3+pJvhUKdaqzj8XqBmxPXj+wnTR/Z7he7q2Lo42JWEkc/e/kZWfBZRaWr0k6wltNwO3
	5s/hAXSBqTdKHDyeNpnAexOoFhsYkI6B8JFSDKhG3T2VIfnYVfWenIDUz1rR0qSij/nAk7B
	5fjZ/sHgrbap98qI4GdXmtkPvsg+NjBqurQ7V5RvOu2Veg92MkH/qI4T849LAeMd6GP1hpQ
	3FsNJqDVpOeXf3Ct2JXTfL72OSrUFeu6k3/fQuKMj9HAYtA+UlazORbWXahGr5J+yVv9Y10
	n2pjCGiUzoFLP6DhT1Yff60kN15I9ZAerBJlRwBxB5yC9A+ntxneg6nsXdozC6uOTj27RPj
	BXjnqnpbnwT9usC9dmzaZIvb1Leb3KVn01NTcVDoDKEe6X+KSa2EjHjAtacv2dGaHfpXoiF
	hIdwMpK4OUl4saukKVGVRGMPq+rsyJ2TUC6VS5CVxXvEfYXbPxFkt/j9YLb4oaZkiRDAXhW
	ezwZVk8/eeiSgjcUTIUakpbTh6kHOWj7gJi8KPhgleuCufvqNh1Tkod54ZfArxG+3Mangwi
	4F5jb4u14uL+VZwCRsSxlzSOKkUK0qOyLHbIWsWbGoG/8OShA6wDg4=
X-QQ-XMRINFO: Nq+8W0+stu50tPAe92KXseR0ZZmBTk3gLg==
X-QQ-RECHKSPAM: 0
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[linux.spacemit.com:s=mxsw2412];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[spacemit.com];
	FREEMAIL_TO(0.00)[163.com,kernel.org,linaro.org,intel.com,arm.com,gentoo.org,pengutronix.de,dabbelt.com,eecs.berkeley.edu,ghiti.fr];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	TAGGED_FROM(0.00)[bounces-282354-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[troy.mitchell@linux.spacemit.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[linux.spacemit.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linux.spacemit.com:dkim,spacemit.com:email]
X-Rspamd-Queue-Id: 9B843358941
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Jan 19, 2026 at 10:41:22 CST, Shuwei Wu wrote:
> The thermal sensor on K1 supports monitoring five temperature zones.
> The driver registers these sensors with the thermal framework
> and supports standard operations:
> - Reading temperature (millidegree Celsius)
> - Setting high/low thresholds for interrupts
> 
> Signed-off-by: Shuwei Wu <shuweiwoo@163.com>
Thanks for your patch.

Reviewed-by: Troy Mitchell <troy.mitchell@linux.spacemit.com>

