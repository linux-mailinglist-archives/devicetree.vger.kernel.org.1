Return-Path: <devicetree+bounces-80518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B4C6919DD2
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 05:23:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 96B411C21682
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2024 03:23:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81E4A14295;
	Thu, 27 Jun 2024 03:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="M9J0cCwI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com [209.85.160.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0AC1078B
	for <devicetree@vger.kernel.org>; Thu, 27 Jun 2024 03:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719458623; cv=none; b=u+E+Mw5QDOASukp5ZV6PlG2WeUWfDwnDUjh3WfPuGhBhgRXTql7IzeoComPFInY0ERo24NQrVXADsVLylCKLtUiNNr0rrvdo2y726cgOkC+M0irPFAP9dRMpWmdUw5cguwaaY+XM/KIB7rvMkpJvlzbj80dQFqbtOYC31ClS8c4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719458623; c=relaxed/simple;
	bh=QikfeXobTSKxCaP4omuNIsg0yVhfL5NJ5MTEPUv7Nes=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TlHylctQmVw7bvGNkYl2hPNdb/O7ljroNfYFOISWqykDXQVXKMzOxpbqjJY0FpvAOMlvNbBOFjEtIXEw83fVVqOL5vyDHwuglMX+LfY9UMIXSnoqiZYnoQ1zL7ulLrdAoe/TGQhgWIGy5b1ugqA+CISkyMD6nOqd9xt4AVm1IRk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=M9J0cCwI; arc=none smtp.client-ip=209.85.160.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-qt1-f172.google.com with SMTP id d75a77b69052e-4450111d54dso113591cf.0
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 20:23:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1719458621; x=1720063421; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=QikfeXobTSKxCaP4omuNIsg0yVhfL5NJ5MTEPUv7Nes=;
        b=M9J0cCwIHKhkqWrxJauWVKPRS/AQoWoWhOomSJNR1n9RZ7d0QrIwpRlIvI0BFmcGd5
         a0Ub+VjgdADxx/e3DnCl7o/AfXFe8iO9sQ3doqS1c+NM+KS0Car4nxkhesHx1omDU4gv
         1CAiKFNyk1DAZ4tNiA6lKrlaVoNL6Au4Ql4Ap8na8wyOXeP7BFm6TmTkFKdCWblQP+z3
         PIjROzAripVkd49/cIl5E9+Nf87F85v4wP1BP2b5O3S5p+0EoDj5jknZk9UxCdegfWq6
         rVhb0qo3xp+D93wnNOYV/ZrUz0gCGvR8aMdpp/fNAkBawBAmhMcQl8+Why/d7YgUxHg2
         XVQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719458621; x=1720063421;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QikfeXobTSKxCaP4omuNIsg0yVhfL5NJ5MTEPUv7Nes=;
        b=I4Ci0QEpX5xbOW1PcIjE4Sq66Oq2TQB7GFENzGcOYuGCfzdRsSDo0ieA8ni0Wz2Lef
         6j/pBewKdWngEhJ65eHt7H9LnsSHIFgCmtpgK9WCm8V9Pw8Rr5h1rxQJjHwGxRJbiDvo
         BhPbQtfoapZg7H1mmOJifhQeQyk8Yze7siDPxgrp8wYLBSQkfrENR3VWQYbX0WkM/No2
         ILN8qKoEum601C/8r8kqqpTaArpYY8PpHHW61DZ/83tyEXIyOsdiysjjudxEiF9xHsQ7
         Klr83OqBRTRMyVds33LAERV8lrmQTN9+5cu6a8pMDJaMY3vTy8JXca+9fF7MnJsAsoWq
         6E5g==
X-Forwarded-Encrypted: i=1; AJvYcCVMC/3PNyo/Gk/w/fj+DZHa7PNKriUO3xbYUVRlqV2gMTOjq6THPReXiRUUKp1+co/DdDZSmsMw9IU52xRjavHDwVwCAnlFHWuTNw==
X-Gm-Message-State: AOJu0YynqGrVL01MAEYYAaYptwtsx8BNwBdwNgnhy5/3D0mLCThJ/ZaA
	HpX/y/+dEU7b1OF7/0i7uop/4/pBBV1e3ycUnp/7juf34h/MRJVW6kw60ymlmYFkqyxPyJddzHD
	CkfGiNULupDtGcqLC0J+QjScAzeudcqaSSSTy
X-Google-Smtp-Source: AGHT+IEbj6A4+DDvJB4pQc3ii8OWh9rGdVOXWkqVlxAM5Xo3knFcy/93NDyEJd7xKKjg7zWlbHiZglcGVC3Hq4HPUXw=
X-Received: by 2002:a05:622a:130b:b0:441:5724:481c with SMTP id
 d75a77b69052e-4463db532a9mr2439001cf.8.1719458620655; Wed, 26 Jun 2024
 20:23:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240626052238.1577580-1-aniketmaurya@google.com>
 <20240626052238.1577580-2-aniketmaurya@google.com> <e28ba03d1df1c0c5aec987411c40e44fc351ce0d.camel@codeconstruct.com.au>
 <c15045b4-2e5f-4fcc-b25c-76a5e4973e93@linaro.org> <b4ba5fa7834fdfb1a1e26ff0e01b9bb235de63b5.camel@codeconstruct.com.au>
 <CAMmmMt25nkZTXXLCVGv1baf3azQR0kwbM8LP4EzCQKOPLUhbVQ@mail.gmail.com>
 <d256cd72ef2011c3bfd045b04fb6509d1ac827e9.camel@codeconstruct.com.au>
 <CAMmmMt3DZWA734iFGLxz7cj+hYiWgq5MDOrc_UJpYeaij+yywg@mail.gmail.com> <ce1786dd7c0e9b892ffdeed20eb0c1c9c0808984.camel@codeconstruct.com.au>
In-Reply-To: <ce1786dd7c0e9b892ffdeed20eb0c1c9c0808984.camel@codeconstruct.com.au>
From: "Aniket ." <aniketmaurya@google.com>
Date: Thu, 27 Jun 2024 08:53:15 +0530
Message-ID: <CAMmmMt1fi4KryMPVv=YRd2WPt0RZsjyaGm4PE6WGzzAOLyEDuA@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: i3c: dw: Add property to select IBI ops
To: Jeremy Kerr <jk@codeconstruct.com.au>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Joel Stanley <joel@jms.id.au>, 
	Billy Tsai <billy_tsai@aspeedtech.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-i3c@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Jeremy,

> Does that mean that *all* existing implementations of this design will
> have IBI support? Changing this in the pre-existing driver will be
> asserting that.

Yeah, I checked with Synopsys. All the implementations of dw core have
basic(without payload) IBI support in master mode.

> > Shall I remove the ibi_capable property from the dw_i3c_master
> > struct?
>
> Only if you can ensure it's not going to break the driver for existing
> hardware deployments.

Since all the implementations have basic support, I believe it should be fine.
Sending a patch to fix this.

Thanks,
Aniket.

