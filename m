Return-Path: <devicetree+bounces-216558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 33FA3B552A0
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 17:04:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E36CB3A8883
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 15:04:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0CF621CA04;
	Fri, 12 Sep 2025 15:03:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="JOk+27iZ"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1ED1FBEAC
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 15:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757689439; cv=none; b=LKDie9EuEwFEGngaNkO1p8VMWVgHSktbmluzKtBx5G+yZFaeuReJlzF4M/Tpan4WsDeBtb44CVfzsd/JlyKmGTBmuK/5T3r9MAlbXavGYqeG4tGP+lvH5X+z4n3q0Jb6MLV3rl6QytPH3nOfi/LleEVT9jX2g3Im4bEOlFLjX6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757689439; c=relaxed/simple;
	bh=DS83X1AnvvzLm+bCai80VK+iKHbBFz40tJWSVtqRlZs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=c6UfSehgFq/Y4yGG4Cw7pFTarmJ9eDYZATPHbuDabgUK9pr/IqV9N+bqhOPBacUJQBaSKWqbUksPjOC2aCnHQrawhiBNA9CyhtM0BFCjkUTWi7u/TM5Krn9qQNglKLmaDhejHtBeyu9DRvIOP0apOzBWLHT0hWpJz5V9dZ+zg+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=JOk+27iZ; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1757689437;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=Ql70NaELGKTagorgJIq5i9FlqS1h8VPOM70ZysXf1/A=;
	b=JOk+27iZO6dJpGN5ToHxN5943WIV94n15EKC9ADLp9EeGDuwNcDXw78JDQXuIda/e3esiS
	FhH7G2czr+PKEuXeX6Wq6NRbvUSfa90ErbpS6ysDfDzvqX21nTAeIHDk0HrcZjiyi2Q5tq
	bVYquwAwX6aZOLfIOBcr5IoqXf2GoMQ=
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com
 [209.85.128.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-679-OqYRhvcNMcO8ZZztoE270w-1; Fri, 12 Sep 2025 11:03:56 -0400
X-MC-Unique: OqYRhvcNMcO8ZZztoE270w-1
X-Mimecast-MFC-AGG-ID: OqYRhvcNMcO8ZZztoE270w_1757689436
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-727551d15c4so41673157b3.0
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 08:03:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757689436; x=1758294236;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ql70NaELGKTagorgJIq5i9FlqS1h8VPOM70ZysXf1/A=;
        b=xAcq/4LzNG4qYl3HQd7OC5hTXXYRoXPtE7wzjvp9qfJZVQ4fzmFWTr9rcWavUXQNFf
         UCyaFhV36PvGw1rE902/vJcrCjpQxdt2Euxt9gqY2OhsdXDmS/6VAeAdoUcw1Cg6R4St
         OnP1fOuD27EkMcN9BnBPFU46OQlp6+SWrejE22oAVPl1goedsmm37tUZmIAXQ2q7yEQD
         7bJtlIe3OS8gwP+hQMUtOsWK5rWFU8lDh0oTx02OkmBTv6FaUgw74t5xejQpjd+Dl+s1
         vfx1elNfnGH/xQBf316Z3DLDKeYUJNaZ3d7SNNwSQeyR7PkrUzRG7wtEyjvtrlb5+Z2/
         qS0w==
X-Forwarded-Encrypted: i=1; AJvYcCU9fcmMOkqUmN3Y8mFbci0lGu4oAZUlq3o4fxGmpxTNFwZugkqAMI3AN9tpI+5F9X4w6FfmiM0Ng04a@vger.kernel.org
X-Gm-Message-State: AOJu0YxwM8JHoXT9EWh5a5TEw80r2KH76TI0lJUOTguXcd8KkubXbn8G
	TyXeTIIwzijOOVd1+LWlJZHy3S6OOwUwYdmHYUvOpXqH2JhFi+7cpCuqTgOKltY9kU9m53Y/65e
	XPJHZBmpt7d+p0GsunYEa6j7nrGZ0qHfW0mZEAcfQ215B4f8YPBpiZe+1Fa0A6Xk=
X-Gm-Gg: ASbGncsl27GhWBQeuSt+GVU8C9dLGoWdSMNcjLIVZnr7ODuS34dPJKKGM7K+5GHLG8P
	af1JxNYuUuhRq4pyCSN3P9OBbT/x2w/MylT46SJcRIhbAJzCN/pXM+rbfeabYRRkm7u+CqqzNGy
	zdJiWpeNNxobdlEmipjVoSGK2PMAL619xVx4ydQFUcb74n/pmkMZPc3mTx3aFzNIaxiKIKH5m4p
	Yutx5Hk2pLuMcq5mRIWlQknzt6w92X+Fm2qxilBrANbtLEGZzNDxwzWQNAK4uwXB3VQkVp2j2VJ
	qNzWhAO0ge2/O00kVW5MW8EAra7uorLKSQ+aKzdZ95k4R6nrVd2J4xqHZlWaKh14XCGgzc7lIoX
	dZ82Gz3QbxQy0FF6SUiMq630gdwW/gA==
X-Received: by 2002:a53:d30b:0:b0:5f3:317e:409c with SMTP id 956f58d0204a3-6232f8cb7ebmr4945693d50.0.1757689434726;
        Fri, 12 Sep 2025 08:03:54 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFAX6xF2fAzdjMOvplSdvZGKXrlcHOORL6WIZPj+3wYjGbwX4wiucOJhgAsE3V0lTTyfzcHDw==
X-Received: by 2002:a53:d30b:0:b0:5f3:317e:409c with SMTP id 956f58d0204a3-6232f8cb7ebmr4945647d50.0.1757689434009;
        Fri, 12 Sep 2025 08:03:54 -0700 (PDT)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-820c88db181sm287951485a.4.2025.09.12.08.03.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 08:03:53 -0700 (PDT)
Date: Fri, 12 Sep 2025 11:03:50 -0400
From: Brian Masney <bmasney@redhat.com>
To: Raphael Gallais-Pou <rgallaispou@gmail.com>
Cc: Patrice Chotard <patrice.chotard@foss.st.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org
Subject: Re: [PATCH v2 4/5] clk: st: flexgen: remove unused compatible
Message-ID: <aMQ2VveE3hIgmOBI@redhat.com>
References: <20250912-master-v2-0-2c0b1b891c20@gmail.com>
 <20250912-master-v2-4-2c0b1b891c20@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250912-master-v2-4-2c0b1b891c20@gmail.com>
User-Agent: Mutt/2.2.14 (2025-02-20)

On Fri, Sep 12, 2025 at 01:36:11PM +0200, Raphael Gallais-Pou wrote:
> Following B2120 boards removal in commit dee546e1adef ("ARM: sti: drop
> B2120 board support"), several compatibles are left unused.  Remove
> them.
> 
> Signed-off-by: Raphael Gallais-Pou <rgallaispou@gmail.com>

Reviewed-by: Brian Masney <bmasney@redhat.com>


