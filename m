Return-Path: <devicetree+bounces-75511-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AD5890788E
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 18:45:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A951B1C21F40
	for <lists+devicetree@lfdr.de>; Thu, 13 Jun 2024 16:45:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAADF149C4E;
	Thu, 13 Jun 2024 16:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="nOgtUPa8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 777B61494AB
	for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 16:44:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718297072; cv=none; b=mh586wWE8jvMfsqLIlvAKU6wNRmdXidOXyWWVhAGvEltzBnocWrTCKd8q2KtC79Ilt0cc+l+1sRzaFi7b/WzWkHeSgPX30Y42sPLUnlyTnRd2ygh/BL0PPmaiNdXQB1QNIKW8Vo3NimX+GIf/j2igHbZJJNi9pSJEe9A+Rr6tKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718297072; c=relaxed/simple;
	bh=OYE/Xcvy7p3lJfgQxzABES7ztNGSQ3aAbGFD5fnWbL0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=o+xYUBK/F0OONgYALn6RWdsiwoWG4iUa7MYctca0pJs+EFWRXCE/EBtKCH0I3mfPIKx+x/CSZj+1JMQwbXcZ19IlhZXFKc8F6RIQnzvSdm2OkZfZS05vULjvo0yAHeT9xJolyj36P1zPAeGTLbZe2rKECcW9wDCVUCTOLNXTEzY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=nOgtUPa8; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-422954bbe29so86275e9.1
        for <devicetree@vger.kernel.org>; Thu, 13 Jun 2024 09:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1718297066; x=1718901866; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=60AjIXfo58T+HENYCNF845hVhoQVriIsm7V/ZBwIR6A=;
        b=nOgtUPa8wDb/AzrfxrpzyL4rlLy3Jl4jn7YGI3UNW7ED5tqZXFT9+bS/3b9Mo8VHwS
         XA6Gm+E12H7kIFX5vGD6xG2N3gyQB7z6t9m08Jo302b3PbhTVVoPzA/7zgSGqKOhOgAp
         kHXiDQTMuMC1EgLEHZnTU7znwzRc9CW+bJdTFXKR5/KiBXzEO/TmU1nOz69MJFT7/s3a
         5BK08WbeGA/++IjZcmhJItcmTYbVJwf5+8sH2vqjsw7Svx3tivFIcqPTclAfYyD9UR5N
         I3VkJ2wA1VFRuWkfW61DwV4J5PWyvj4MB6fENn5KVaj0agGspXeCwtA4dgp8w/sHqWl7
         KdcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718297066; x=1718901866;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=60AjIXfo58T+HENYCNF845hVhoQVriIsm7V/ZBwIR6A=;
        b=FLztihu3UxQAQ61oEfLtNp1v4XQkfcx56gxnaoecLTvKkqjJIYrOrWYPkly4kYjziu
         7VhgfUTt6xlEcN3Yv0kVoBp1wTGWG99v6mZi44vsXQnyDChv9+wv7HxHnZZg2KFNVQPy
         VBqpevC+F5W4NqrHrB6sDp0fGBxXviqsaa/FvhxscYVJpES/E6BOwd7ldZ7ObXH0NjMC
         9Q7L6/KqkFwYVCJcWfPtlPLWXJQfQcZ4yUA8IHtHXBWFA5AZYNAmE9kIDqDkIRo/m+Jw
         h8VY/8wIGjbp6+iQPJ8pyft1s6BRp6KxZopRrCUKevz1vLfiBVhJ5SEAFmiJL3ANrv5S
         kzmQ==
X-Forwarded-Encrypted: i=1; AJvYcCXGHTkY6yINtI5W10icp97dm49rqj/yWDWpTz/CoOmBzbQepoc9dKQWIoW9Mw0BoCcd9+n9C9QQ7cjNFhTQsH+CPOaNlTPgpVKqFA==
X-Gm-Message-State: AOJu0YzJS4njr2tB+9JKsBSheJPDQtT2z4TMqS+aw5fnnVPtYZTY6Kvw
	skdRfppeWVvYnGuQ+2eOhlCj8m/abaQXLNHUi+YDGIY2lm6lB3C7A0Jp2G/WmhvnBe4I0mHqUuv
	rKhMS
X-Google-Smtp-Source: AGHT+IEKkUD3gscpagWRaWkiDGBIKwrinPH2oqVCfI52M6kqKGwJfJ4Fjefhxe6CptSIa/dUoU0i4g==
X-Received: by 2002:a05:600c:c1a:b0:421:75af:e66f with SMTP id 5b1f17b1804b1-422d474b264mr2382325e9.2.1718297065579;
        Thu, 13 Jun 2024 09:44:25 -0700 (PDT)
Received: from google.com (216.131.76.34.bc.googleusercontent.com. [34.76.131.216])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-36075104a26sm2176227f8f.97.2024.06.13.09.44.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jun 2024 09:44:25 -0700 (PDT)
Date: Thu, 13 Jun 2024 16:44:23 +0000
From: Sebastian Ene <sebastianene@google.com>
To: Marc Zyngier <maz@kernel.org>
Cc: arnd@arndb.de, gregkh@linuxfoundation.org, will@kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Dragan Cvetic <dragan.cvetic@xilinx.com>,
	Guenter Roeck <linux@roeck-us.net>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, kernel-team@android.com
Subject: Re: [PATCH v2 0/2] misc: vcpu_stall_detector: Add a PPI interrupt
Message-ID: <Zmsh53PnONKG23MC@google.com>
References: <20240613141335.1134341-1-sebastianene@google.com>
 <86tthwki93.wl-maz@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <86tthwki93.wl-maz@kernel.org>

On Thu, Jun 13, 2024 at 03:52:08PM +0100, Marc Zyngier wrote:
> On Thu, 13 Jun 2024 15:13:33 +0100,
> Sebastian Ene <sebastianene@google.com> wrote:
> > 
> > Hello,
> > 
> > I respined the v2 version to address an issue previously found here:
> > https://lore.kernel.org/all/202406132132.FBKSWFav-lkp@intel.com/
> 
> So is this v2 or v3? Having two v2s on the list is... confusing.
> 
> 	M.
> 

There is a small change in the patch 2/2 so you are right it should be v3,
sorry for the confusion.

> -- 
> Without deviation from the norm, progress is not possible.

Thanks,
Seb

