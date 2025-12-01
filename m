Return-Path: <devicetree+bounces-243282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0BAC964C8
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 10:00:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6AA843A409C
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 09:00:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 527C82FE04D;
	Mon,  1 Dec 2025 09:00:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DMHo4Tzl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FC482FE042
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 08:59:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764579601; cv=none; b=kgSDvzdWFwDUr9hcLjg5M+mvL18NSPuGi0QT4gxYDiq80kfP0e8VPhR/KfgGMADpryig/eqhTAp6ESoAHl3qC3/cVkRMkb1FpDhZbhu/QMmN6caqjX1fZg4u+v/qVZ8lqFFTqlJmQQiVU+8FvPBb66S1mNPj9VsbqHIaLw6LNQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764579601; c=relaxed/simple;
	bh=OlvFf6fno+95o8YGvLqx4ArTG+OZ1gRz8l8cTez3L0E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nonptBEYxSzNDH8aYvnrjTm7NJzFOJM+KY0y7vXPH+cw/2sZJXGHx/yRTWU/sys/6LtQAydsiHmAZw+PCx97CrOCvHWX765s/AB8lxfwrnAczDGrXG/WQnkZk63mOfTu+mgxblj+agF3DjY9xXEI/nQhIIxrK9RE4XKV0obXXtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DMHo4Tzl; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-42e2ce8681eso1058227f8f.0
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 00:59:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764579598; x=1765184398; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0cmFzub/Ypc6pcPBJnk2rpItrwarW2n0unLQwqzI/cY=;
        b=DMHo4TzlGjF1qe7atplUJYMANvMX+ffn20Ir/XubBwH50cSx7VzXLhVulrrR02c8IB
         0b0yUPBQqVVxd49K1VBGPooRqvLb34BUXRprh3ZmTADlXVSlAt9gP3doG5qAoSY7kSwP
         T285X8+PexsTPSgoNKs6LsLtUWKhAPLPNRYStvgeNk7LfDP+fBJS2KS9IEzgSS7MrzWI
         x8fit2Ip/SUKVPN67ua+v28kMlo0Qze/U2kzVxw1SBnfig9YImlfGiI0vebUSG8ePQuu
         hMtlndHFLyzY5tyDX5/rsU376/DuNgpjoTXu5cWxhhk3psWOlUib3O/Gzt+ystzVXlr0
         s61w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764579598; x=1765184398;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0cmFzub/Ypc6pcPBJnk2rpItrwarW2n0unLQwqzI/cY=;
        b=EZpV5tHVxAPdGu77eHVYkGzHGUKnikSSFJ6ae2yvowaVEjVr4nQgv+vwcQoFY93cDM
         Nnm+xOXmfhsGBKBtpzvxzYfJgPnY7Fn4epaViHJsis81Thf2oCnhY/+ITIkV4dyRSRnu
         3/PL3jJETmXdMZOciV+dw61KHbH27l0LbF4GsHMamgmRPPdbKuugpIN8N5W1H92MfYiP
         zOxKBAGg29G+4hqocMnN7kl5dDGu+IsQKpp4aP2Ll4Wpr4vUNLvGizHjDXoQnymSr1LF
         zRuHhHoFF9rESUC3ngXDeVVxtNfSy8DZSqCxy+6agp65ga9ayjBxB06YxRyGpmw1GZNa
         K4hA==
X-Gm-Message-State: AOJu0YzCQewA67ddP7eKcMr1szaY/+MjxuGZfkWlzXWnQ/2ifuf3fCNm
	lm8sHvyMZOrnMkH0Xwiv7TjC9BOzQOfDFuyfGx6X+sIYEKEHiSYoYOJf
X-Gm-Gg: ASbGnctKzP0FqdcPEK7t011Wy+Ibn3RrO2Yq9HLiYMXqyRG+o43QcZQ2fR3R2eFvTqp
	XPZyZ2XYaroe5Fjfyw8grLPK0UKLTez5/M0DHEpx196sBlVAHwntXqH3WG6myrFQQiy8doHelH/
	jb0FAd1JI6E3r49emth0kK5wAzIUvZowjz9G52ZTPowhjaIFvZKCe+seZM/eC9p80Edd5SR8soc
	4fh+2HuCShHKOn7q9iC/n8/7Q3nnM2ubpy0rxY9W9//z9oHb8ODBbAGrZlHlXYjlKaf0Y3cGyVN
	Sq++wIoHIzTsQQgQ3eGjE4KT1H7nZH9GlVaQh9bK37YRsS9gkCTTUA5eyb7sWLNmdPP7TmUkdNk
	Km7NiJLXy+jao3d/HglgiWkrp/GbvjjvnttZj/MKdzEA4wqwdqXlYWO2tm8z2yHLKz6R7EEu0+c
	Gy0v1Ws9YWBlDsmA2djHehml3eIxY=
X-Google-Smtp-Source: AGHT+IEOa736pXo0/WJD4acqB/BdSl155lhGxRAO7bq/cz6pjE/kshkcCp3gRvHiSfviAaM/CB44pQ==
X-Received: by 2002:a05:6000:200c:b0:42b:4139:579e with SMTP id ffacd0b85a97d-42cc1d1983fmr38638725f8f.43.1764579597732;
        Mon, 01 Dec 2025 00:59:57 -0800 (PST)
Received: from owl5 ([2001:861:3201:3d10:4ab6:6efe:9b65:a6af])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1cab9af3sm24362786f8f.41.2025.12.01.00.59.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 00:59:57 -0800 (PST)
Date: Mon, 1 Dec 2025 09:59:55 +0100
From: Gary Bisson <bisson.gary@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, robh@kernel.org,
	krzk+dt@kernel.org
Subject: Re: [PATCH 1/5] dt-bindings: vendor-prefixes: Add Ezurio LLC
Message-ID: <aS1ZCy2G03zZLH6D@owl5>
References: <20251201084140.376058-1-bisson.gary@gmail.com>
 <20251201084140.376058-2-bisson.gary@gmail.com>
 <f9e30721-a636-41dc-93ab-ca960e0415ab@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f9e30721-a636-41dc-93ab-ca960e0415ab@kernel.org>

Hi,

On Mon, Dec 01, 2025 at 09:50:07AM +0100, Krzysztof Kozlowski wrote:
> On 01/12/2025 09:41, Gary Bisson wrote:
> > Ezurio is the new name of Laird Connectivity after it acquired Boundary
> > Devices.
> > 
> > Signed-off-by: Gary Bisson <bisson.gary@gmail.com>
> > ---
> > Cc: robh@kernel.org
> > Cc: krzk+dt@kernel.org
> 
> Why only two of us? Please don't work on old kernels, some ancient code.
> 
> Please use scripts/get_maintainers.pl to get a list of necessary people
> and lists to CC (and consider --no-git-fallback argument, so you will
> not CC people just because they made one commit years ago). It might
> happen, that command when run on an older kernel, gives you outdated
> entries. Therefore please be sure you base your patches on recent Linux
> kernel.

Actually I'm using master so the get_maintainer.pl output is fine, just
wasn't using b4 and addding the CC myself, will resend with b4 and will
update the patches per your review.

> Tools like b4 or scripts/get_maintainer.pl provide you proper list of
> people, so fix your workflow. Tools might also fail if you work on some
> ancient tree (don't, instead use mainline) or work on fork of kernel
> (don't, instead use mainline). Just use b4 and everything should be
> fine, although remember about `b4 prep --auto-to-cc` if you added new
> patches to the patchset.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>

Thanks for the quick review of the series.

Regards,
Gary

