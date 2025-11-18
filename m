Return-Path: <devicetree+bounces-239636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B21C67E4B
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 08:21:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8AE874F2D34
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 07:18:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C80C1301007;
	Tue, 18 Nov 2025 07:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NGMh+znm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f175.google.com (mail-pg1-f175.google.com [209.85.215.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE5F3009CA
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763450254; cv=none; b=l3mmuISjTb2KgkBUKtSwktf4br3+P4dQo+dCD+38YByYK++S71nHfL6dDgCmNqaOuxziNIglPUb6NMruvfl+4Utopvvrjs3keIzF+0juE+KY/RxlNswL94aEwpLbTrE0RkCZzQ6yEs4q8QjtHHZ15j+ypZ6bqz/RqCb5OqqiiDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763450254; c=relaxed/simple;
	bh=7L8uQUhYhVxy3DBDUcYwUUGjQQ/0CkZ24E4lZ1HLg3Q=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ArB12ntf2pIto4yoEHee2v+kKeWl2QY80i64N40LXv1pPllRVvwPsyXHo9RtA5sn4/iIswcAXz3T116CyiOQ/VNLu5KBq2qlonfzxWwT4Im9EFBu1aOybB4PVBKsH2cy9XBFKGNLKYjm+zdWoQn5cLZl8t/L4ysEi98IvyYrgCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NGMh+znm; arc=none smtp.client-ip=209.85.215.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f175.google.com with SMTP id 41be03b00d2f7-bbbc58451a3so3665452a12.0
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 23:17:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763450252; x=1764055052; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1h/LtINK8q4zriSv56jSMYuYj4wBO4XsX7/xajbaKQg=;
        b=NGMh+znmLr3n4cPnKdjY7aGkdy6HbRT1IMFoVe517upwdAb3g+f7xTn9SmkeIimAf9
         FYNjA0gHB4PzsyiqvH10ghy7nf2XnJf+i5/XzJs/o4llG4LoE/9xNYbZIf5M/8siHclR
         HuJM6Ffq4tY7Yj/Pc1hdcvzAp1Xc0eG5HEUiMOnvU5Yxj9zcUiMAYalhRQGWbDOW8RcA
         Hxp9kjQ7Qave3QxQCp9+Z92dSTargq1TjpaYr88jbJbPgA4dqC/pZf/Rm+IHU2JGuI3n
         8Ne+8ooPDWJ0HxcxzGojYRUMhuRbSdI5b4L5RZ3j/YjxOATm8NdRkXXq7Cj7mDCWZ1kJ
         J0Fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763450252; x=1764055052;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1h/LtINK8q4zriSv56jSMYuYj4wBO4XsX7/xajbaKQg=;
        b=aw23R5wFqKZjZ5AtU9uWll67ahyoh+scV48cXE7TJII4m8ZWfp97NKByqlkiYozeVh
         Mv655BtHWydBCmJkntlvHLgV52Te6Mgpl8Xp4JC6dP5ViUve8VDdLCDiHRqmypOlAAVF
         Zd5EKAlUt5UNehDe1HyJtKF3jlUK0fdzD4da6Z6diEocnbaA4tqiloZpRtPj87DKX1zD
         CZvUCzMS/HaD3y63WqPbl+rpTC+ZaMhVM8GDQHni9U3qGYIeS/WHpHy0pvOHwmcfItyE
         M12g8XCP8CekHhwtubpNkbxr2WweEvoi1id0WYnD6mmAgC6X4+lpOcc0V6ogE513Thsn
         NMgQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLYUSxFOfwk5PqkOMPE8ArrVjjY7DBkOSXDvJVoEHm/suGGpf2ahRMT6BPoFSEHbvSrKlTXTmDCwBe@vger.kernel.org
X-Gm-Message-State: AOJu0Yxyir/+zOMAAlo2ne45kB5JRzlb2hSyFuFa5HuNs9qzt5u+YeU6
	x06N8GgRZI0VygRnV9hJD85s4Qs92figOCYOCoqkPZ6QyIDRkktXzt76
X-Gm-Gg: ASbGncuFcdSQqO282NlZ34AGUep+Jlr7HDCZZxc3OmA3eyMfhp7ZQNvbOFbTGw6MJaE
	LW467JKIxNyQB14G6hxoxY1zwLl2erncEXMB8oetkuKjRD5piV30x4U/CUQBcrUbFhjpewAlSAF
	tqZTUig/UYxw4XjVi4nDrPzpRk5EAhW+s69gcFv4zNsf/2dCbsCJXG4J27xTjDA3JrQIvvVJWR+
	yWqPcipNKNj999sGa3oSJm8RYfo8wdiVXVxdObp97LtkKjRaDem4PIsiO6pD2UBtYqq8wgwhQwQ
	TI++T7LVKk6iyyJQ2v0eZNdbjKinOcmJSqBtsVDi03xh1Nh91Ut6p1wb58VYYeeTOxqFFUfC76p
	44AR2AUxtFX5+VkQjuwLzRdyro1OefZJYvySN5Li4OGlA8RDZUIeqHjvqBlHFeF+eOdcSEf9Fyg
	==
X-Google-Smtp-Source: AGHT+IF7vM7dWQA7a8j5a3/LMB+ij9tgBYk+NU42Vt0dswOO93rmrv5IDEUmNpYrednFhDvN1YDVVQ==
X-Received: by 2002:a05:7300:ce8e:b0:2a4:3593:6453 with SMTP id 5a478bee46e88-2a4ab88119cmr5119698eec.3.1763450252407;
        Mon, 17 Nov 2025 23:17:32 -0800 (PST)
Received: from geday ([2804:7f2:800b:b822::dead:c001])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2a49db7a753sm54420555eec.6.2025.11.17.23.17.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 23:17:31 -0800 (PST)
Date: Tue, 18 Nov 2025 04:17:25 -0300
From: Geraldo Nascimento <geraldogabriel@gmail.com>
To: Dragan Simic <dsimic@manjaro.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Johan Jonker <jbx6244@gmail.com>,
	linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/4] PCI: rockchip: 5.0 GT/s speed may be dangerous
Message-ID: <aRwdhbt0AcLQ1LgF@geday>
References: <e5d5c0dc-81d6-ae0e-7552-c2e4fb39bb0a@manjaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e5d5c0dc-81d6-ae0e-7552-c2e4fb39bb0a@manjaro.org>

On Tue, Nov 18, 2025 at 07:45:45AM +0100, Dragan Simic wrote:
> Technically, you shouldn't have included my Reviewed-by tags in some
> of the patches in the v2 of this series, because the patches were
> either modified significantly since I gave my Reviewed-by for them
> in the v1, or they were actually introduced in the v2.
> 
> However, I checked all four patches in the v2 again and everything
> is still fine, so just to make sure, please feel free to include for
> the entire series:
> 
> Reviewed-by: Dragan Simic <dsimic@manjaro.org>

Hi Dragan,

Oops, sorry about that, and thanks for calling me out on this matter.
I'll definitely bear this in mind for future submissions.

Glad it worked out in the end.

Regards,
Geraldo Nascimento

