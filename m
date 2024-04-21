Return-Path: <devicetree+bounces-61250-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB5F8AC1FC
	for <lists+devicetree@lfdr.de>; Mon, 22 Apr 2024 01:02:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 66EF51F21254
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 23:02:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9225433C5;
	Sun, 21 Apr 2024 23:02:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b="MRhHu96G"
X-Original-To: devicetree@vger.kernel.org
Received: from codeconstruct.com.au (pi.codeconstruct.com.au [203.29.241.158])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 269F0DDC9
	for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 23:02:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=203.29.241.158
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713740570; cv=none; b=jAjqWQztT9+i3WtPiigyhzr3NQSqaTUnb61ZCacf7N114Su3J18lIwt93IYB+Y7Py3nrDzBqpwDShUtvqYpaEOZCRtAcCxFxazzHyLyt9l6AyzsINufUv12YMHHR/djlXGNKnqhhuHT9EAa2NZ7DmwdW/ORk+XtF5EPN/+a3Ldw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713740570; c=relaxed/simple;
	bh=WmkLMarYOKXUjecs7NwtX0G8xnObnHOwTQvtgTENUq0=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=eVZ3rbRXYLwQgRd8atjdn4Pm4IKnt0oAASMLmhyTdIk7GfUdwEo2jpFAJyRGywQzqrVFZ7CBXLjfq6U1s3uPiXKkMZELbRqoX+PqhJsbYIGIAF+Tr8BmaKxQf2OmbjEBANVULUI/oaqeKgJBgNT7nDVC9/NvR79H0GE3EZPKyfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au; spf=pass smtp.mailfrom=codeconstruct.com.au; dkim=pass (2048-bit key) header.d=codeconstruct.com.au header.i=@codeconstruct.com.au header.b=MRhHu96G; arc=none smtp.client-ip=203.29.241.158
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=codeconstruct.com.au
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=codeconstruct.com.au
Received: from [192.168.68.112] (ppp14-2-127-66.adl-apt-pir-bras32.tpg.internode.on.net [14.2.127.66])
	by mail.codeconstruct.com.au (Postfix) with ESMTPSA id 99D08200E0;
	Mon, 22 Apr 2024 07:02:38 +0800 (AWST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=codeconstruct.com.au; s=2022a; t=1713740560;
	bh=WmkLMarYOKXUjecs7NwtX0G8xnObnHOwTQvtgTENUq0=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References;
	b=MRhHu96Ge2HGt2jd7Pxn2hmGVNUVWtotbgLVTsXPiPTwe/HC9jXWh0DjZoPTpww0F
	 CCli8pkFvsLf7vbi9OQ3BIs7IjKoi2kgCfCOQMSAgtuGYR2d8HXIyR6vdQttB28Ifk
	 yx1hUNzq0Xboj9RNQ+QyvcTo6nRtISbTnb55hVXueak+ZjD8+h3Wmo7u9wGKy7iov6
	 zPEdjPC2lO0/c7q+wRr2xZDQBnb51864TbystGQX2fQX+YP63n87HG9w4ekBMJBGIf
	 Iz0S3tGnW4oQqi646oPKoOtp8JoekVa9/VThlGYxUqxPn7wt6kc/09TPaFCSgJ21Oj
	 jStq7nKxZRt5Q==
Message-ID: <0aec6a507b9288cdc0f890164951c730f6f430d1.camel@codeconstruct.com.au>
Subject: Re: [PATCH v3 1/3] dt-bindings: fsi: Document the IBM SBEFIFO engine
From: Andrew Jeffery <andrew@codeconstruct.com.au>
To: Eddie James <eajames@linux.ibm.com>, linux-aspeed@lists.ozlabs.org
Cc: joel@jms.id.au, devicetree@vger.kernel.org, linux-fsi@lists.ozlabs.org, 
	robh@kernel.org, conor+dt@kernel.org, krzk+dt@kernel.org, jk@ozlabs.org, 
	alistair@popple.id.au, lakshmiy@us.ibm.com
Date: Mon, 22 Apr 2024 08:32:25 +0930
In-Reply-To: <20240419211143.1039868-2-eajames@linux.ibm.com>
References: <20240419211143.1039868-1-eajames@linux.ibm.com>
	 <20240419211143.1039868-2-eajames@linux.ibm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Fri, 2024-04-19 at 16:11 -0500, Eddie James wrote:
> The SBEFIFO engine provides an interface to the POWER processor
> Self Boot Engine (SBE).
>=20
> Signed-off-by: Eddie James <eajames@linux.ibm.com>

Reviewed-by: Andrew Jeffery <andrew@codeconstruct.com.au>

