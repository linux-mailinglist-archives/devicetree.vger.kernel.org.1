Return-Path: <devicetree+bounces-235731-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 83046C3C160
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 16:36:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 777273A6F43
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 15:30:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 089B5286426;
	Thu,  6 Nov 2025 15:30:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="d38jJJ65"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50904236454
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 15:30:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762443047; cv=none; b=GdkTso8ivwYmwqbiKtCisP227v4D0W9p8VFrZBU+Co9Ga5kAvWACXqWAP9AYe4EajyQM0llCiuMiirW460JY2d2ZOANVJp/8ihlfcaFpqyD4FfpNUN9J1pSZZAEGZWz2xPfNcdxPV9Y8qejQ5uQ5rE6prgsKnT677DoXqJf+gq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762443047; c=relaxed/simple;
	bh=PO6dHZiI3iUO2Fk7I3+uF0XWuA9JROkT9V8qD1fjBlc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AF3qWotyhpm8UHFCRD7u7Jxe5DDzHRJ4+jS2TnBizKj6gkamWceY7iSnbE7oFIccSjQbxz6Rxe4pZ765nOoRLtbM2edPHAFQ3EMcAMjfh6dxIpijxdbt8NKtVQ5ldHJ/y3YcGiYb5tkG0368DZP07YxRPHa+AuDXS2NvRcsLxF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=d38jJJ65; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-472cbd003feso871905e9.3
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 07:30:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762443045; x=1763047845; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ch2Eax89RB20s4DR1TXaJcyV6BYdXbU+N7gMw+0YTgc=;
        b=d38jJJ65XfUZdbhYLC9GKBdE/9XFv5c35O4LHiRgQpEqNpYYqW4WdfJKraLdHKxNxs
         pGVSVAS1cQng5aqa/tBEuM1lGIu5h4DWXW11sPsXwU4dVq7b7FIDK1Ur+DcKokjcxigl
         y5cCHh9QtiW6dbIsAT4iWYSe6AUrTefSuqndyRQWu9Xbd+dGVRtR0XYHEB5J6+2tPbzx
         Coypkc4Sab6SkkGufd1CXk8gUV0EOr1b5KUPFXDcAxteg/q76OPeqFBj1oFDkXDVKkdb
         3Unkd0PI9DPl6FpPkLLACKdprY6BexEQUTFeque4etmBIYIDJ/nL2MYprFHy9t5bqJWY
         4uEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762443045; x=1763047845;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ch2Eax89RB20s4DR1TXaJcyV6BYdXbU+N7gMw+0YTgc=;
        b=WwrogYz1laY6nNhNvsm8+gzpikTnvkIiKC6E9zQVbezHYcjT47DJtcxjnJobMZl9oi
         Meif0VioUa6uCFYDdtpX3HBIjccGVcP/Kl4315EOE/3n7NPISBX13wTZYEp/G9SBRxmT
         az2R5y3+Z+jfPYKhAxyuq2XynkPGKpzbznegOGSPrj34jnwOBWMnsZ6m68sxK0y4x+yU
         1M4dpxNRYep6wSpyUZZvj4y0eDeLHWnpOflaes8vlyOycL0xoVif5Z7aACmsYBSjabqv
         iuvbYcuvsDE/3La9a71syxdc9PzG2xJ8e1x69sSJK2Sj9ToOzGkZ2VBdezaVkG3h1BKA
         gtWA==
X-Forwarded-Encrypted: i=1; AJvYcCWUWuTxQsfS2rtH3UwDFYuj4t/5jeRI6wAT92It7SggdkIQa61s83ENr/E/3s2QEb95bLk45ygAYeTt@vger.kernel.org
X-Gm-Message-State: AOJu0YzZAtaHw+RZ7AhuZaI+kvQLnwEg6jN6iad/zGtJ9ZHHnSRnwtSn
	YkUopkWTOBLS5ajTMXPxWRM8K3fbMMlQEI+TFqe5VuIPE5aLSZsxAA/r
X-Gm-Gg: ASbGncvWs2wuSXCtjQhj6Rz1s5CaYqnIa3eHV3sJynw7gw+3xTHJwl8SCgkzz+62/iG
	spQUY8hJxKKNRd+PXveL7oKuBDDEpOa6o7AnJnXY0nF4aVk8bRbY+rgXUa/9ZyGhWDqsmMe0QZ9
	QapW84jmK36IMD4tT4AnjYx1lSakpmHgNoe/o9EL0g+uOlH3gGp4TkFd1B/UjKIgoadJ+vvjF8r
	/e8PXIolnLVFlY1KO9L4nQf07keFZ+hFXtzkovtcPM7iF9lezUCUxNO1jfy/qWwk+KdE3ECJxVP
	5ZnJvZGRaua3HWrYOHBsEhPznTYV+M06HwmPs3KtDxv7SA8G180v1A94aqNKe/NdGSfpitOG70u
	lvoX5VHE/mujzAnZk7MHnS/8lpjiuKijN14EYEFbTmqaQSZP/yl+NyS6F9tZq9paImgFo4A==
X-Google-Smtp-Source: AGHT+IETjPi/syUrYuUHgX8SQG+xTr+eodzweo3dFQjAnqtz4bbr/W13GjAuzidsPI5Zi5wtliKfZg==
X-Received: by 2002:a05:600c:3ba2:b0:477:5ca6:4d51 with SMTP id 5b1f17b1804b1-4775ce1e87fmr42655585e9.3.1762443044287;
        Thu, 06 Nov 2025 07:30:44 -0800 (PST)
Received: from skbuf ([2a02:2f04:d406:ee00:dfee:13dd:e044:2156])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429eb4ad993sm5677289f8f.47.2025.11.06.07.30.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 07:30:43 -0800 (PST)
Date: Thu, 6 Nov 2025 17:30:40 +0200
From: Vladimir Oltean <olteanv@gmail.com>
To: Paolo Abeni <pabeni@redhat.com>
Cc: "Sverdlin, Alexander" <alexander.sverdlin@siemens.com>,
	"daniel@makrotopia.org" <daniel@makrotopia.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"andrew@lunn.ch" <andrew@lunn.ch>,
	"robh@kernel.org" <robh@kernel.org>,
	"lxu@maxlinear.com" <lxu@maxlinear.com>,
	"john@phrozen.org" <john@phrozen.org>,
	"davem@davemloft.net" <davem@davemloft.net>,
	"yweng@maxlinear.com" <yweng@maxlinear.com>,
	"bxu@maxlinear.com" <bxu@maxlinear.com>,
	"edumazet@google.com" <edumazet@google.com>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"fchan@maxlinear.com" <fchan@maxlinear.com>,
	"ajayaraman@maxlinear.com" <ajayaraman@maxlinear.com>,
	"krzk+dt@kernel.org" <krzk+dt@kernel.org>,
	"hauke@hauke-m.de" <hauke@hauke-m.de>,
	"horms@kernel.org" <horms@kernel.org>,
	"kuba@kernel.org" <kuba@kernel.org>,
	"jpovazanec@maxlinear.com" <jpovazanec@maxlinear.com>,
	"linux@armlinux.org.uk" <linux@armlinux.org.uk>
Subject: Re: [PATCH net-next v7 12/12] net: dsa: add driver for MaxLinear
 GSW1xx switch family
Message-ID: <20251106153040.k7wnctqb6rcpafgs@skbuf>
References: <cover.1762170107.git.daniel@makrotopia.org>
 <b567ec1b4beb08fd37abf18b280c56d5d8253c26.1762170107.git.daniel@makrotopia.org>
 <8f36e6218221bb9dad6aabe4989ee4fc279581ce.camel@siemens.com>
 <df47ae11-5f54-4870-bea8-8392a7fa47de@redhat.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <df47ae11-5f54-4870-bea8-8392a7fa47de@redhat.com>

On Thu, Nov 06, 2025 at 03:38:04PM +0100, Paolo Abeni wrote:
> On 11/4/25 9:03 AM, Sverdlin, Alexander wrote:
> > The problems I had in the past were neither related to the GSW145 code,
> > nor to am65-cpsw-nuss, but to the test itself:
> > https://lore.kernel.org/all/20251104061723.483301-1-alexander.sverdlin@siemens.com/
> > 
> > The remaining failing test cases are:
> > TEST: VLAN over vlan_filtering=1 bridged port: Unicast IPv4 to unknown MAC address   [FAIL]
> >         reception succeeded, but should have failed
> > TEST: VLAN over vlan_filtering=1 bridged port: Unicast IPv4 to unknown MAC address, allmulti   [FAIL]
> >         reception succeeded, but should have failed
> > 
> > So far I didn't notice any problems with untagged read-word IP traffic over
> > GSW145 ports.
> > 
> > Do you have a suggestion what could I check further regarding the failing
> > test cases? As I understood, all of them pass on your side?
> 
> Could be that due to different revisions of the relevant H/W?
> 
> I tend to think we are better off merging the series as-is, and handle
> the above with follow-up, as needed. Any different opinions?

Yeah, it's a problem with the test.

I too agree with merging as-is. I do have some nitpicks but they don't
require resending the 12-patch series.

