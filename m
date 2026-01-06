Return-Path: <devicetree+bounces-251848-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 81ECFCF79EC
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 10:51:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 823B930D1580
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 09:47:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACC113090FE;
	Tue,  6 Jan 2026 09:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BOe82Lq8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82D9C27B35F;
	Tue,  6 Jan 2026 09:47:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767692877; cv=none; b=kumDe4+BuwyEhHdaW5Z72EIdHFByktCqQgoSUPM98P5Ux1ild19Of9AS2fQsCnH7TL4XBoMnqsXK9pliLYafeH6DBMTIwZKyy9HcQmAftGX/rv+pCrF09BtlNX6XeursCzAnHdiwXiIHEeJ7IsHC966kDMsV66waZRaN9xzp3EQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767692877; c=relaxed/simple;
	bh=uhM1UTWuc4g7yfe725dymwVdxVySHHcDwAeuexSN2yc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VO6huYmlx3KmXq2fYTU58uIYD0heYwz/l03bA3uh6daUietNkwbjQFD87EwZHlHH7AX13z7Mw6uZGD88po9rNDNI9nF37vPTYvMk5tAiuIWfR8qU55g/Y2cujIss4JBVgVOjnTxxljR+m0GTlyGqcnf8SSmQWiJqRVqklbW+F/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BOe82Lq8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 914A6C116C6;
	Tue,  6 Jan 2026 09:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767692877;
	bh=uhM1UTWuc4g7yfe725dymwVdxVySHHcDwAeuexSN2yc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=BOe82Lq8tOrWqiqhNhNAPSroTatN4+LMa9qMZMqZBhUaF7Wg7NRN0wc9C7x2iX5yy
	 SvTEai9Ap8dx0KT63sCpI4HXhM+komka525H0QVgsCQU1V3DVaKBj91r3StHe4Mj40
	 HJC6dyMrn20mrg+UWoToOESxc4hKsgHl8tpjut9Ol1VDAmEWWLCYdC8Nvce8EfUuWG
	 i5PYM5MTGJH93S+yaVGbwGYgv/QvyRdWOqWhLvZbbwQhHP8SwBthv0aK0SvWPmCWFQ
	 76TyVc8G9F/MS8oVkl5/X/EkxvR+CNcTVb82YoyoZqR2ERX0KNrNhA8iVFjd/N8dK+
	 f7HbvAxagWYiA==
Date: Tue, 6 Jan 2026 10:47:52 +0100
From: Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Marek =?utf-8?B?QmVow7pu?= <kabel@kernel.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: firmware: Convert cznic,turris-mox-rwtm to
 DT schema
Message-ID: <kxgn75ctlzvfyxdteqqxuafon6ir5jsoi5fxxty2flkqhchutq@ya5pd6rdkhdn>
References: <20251215212545.3318816-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251215212545.3318816-1-robh@kernel.org>

Acked-by: Marek Behún <kabel@kernel.org>

