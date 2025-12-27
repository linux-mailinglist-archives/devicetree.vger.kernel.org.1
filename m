Return-Path: <devicetree+bounces-249809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 416EACDF878
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 12:09:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id EF58A3001863
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 11:09:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEF832DF6F4;
	Sat, 27 Dec 2025 11:09:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7TIhrpI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D7C62DEA78;
	Sat, 27 Dec 2025 11:09:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766833773; cv=none; b=jzTuEgDw1iMsNWDlAaPFIutOz882GaAc8nA/ExIsTGSxFTF9kwNj8wY0b29PFv0CDeUVS1xekgSBkRExEAFAr/4E1dFnAySN7zdEYwqNFTNo/Ec7N5sHgt4zXnm/fboS6ziPXJoW0bRiim+uuW1kAFjx1GEoc3BlMKFaCmuhwFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766833773; c=relaxed/simple;
	bh=JbOZLdmbqKiIXGK3unBmKB2Pa3tI/97z6pwAtInxolY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rEjcXoj94s3HOxzdNShQGqvNXSIIMftQWbOHcjBrJhenaWcdoSvA9bcNcHdYWsZBrvbU61XnZy3s0foo0bkjk9oMiNi74hwGT5OAxz5Bqewkx44K1BwJmuSP4XKo2gT2m3xQ+A9CcMRYuergybfhKJeSKaykVY3MD+f3NmpA/O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7TIhrpI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E2E0C4CEF1;
	Sat, 27 Dec 2025 11:09:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766833773;
	bh=JbOZLdmbqKiIXGK3unBmKB2Pa3tI/97z6pwAtInxolY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=g7TIhrpI/J7VeLmIj6OuxDyfWwcsMU+tMtYqEfIU2d2WtnJ3uYsB9H+Ugl20FqGe8
	 AyfZxubngGH/GhcPbT+momXUlfYPO+lbfmPJ4WOjJp0FxKngGWdiZNQ4TZAcybyzEM
	 L87cI3C6mX6nAL0J63zka6I1ONBKTqsovMufIHXmnp5t225uXgtyAkpl0tWf6/n1gd
	 qzxJcDJNTnQKhUzCtOdjGubLGwXg//yuO3ASOiyoEFl4NBta6fkoJOTiq9sudsU7Ce
	 qjp5/3G8AwY8vd2VK/q4FEhCvNg4Vn1p3jfEAjEVaWEYFiDW/MuAGTaodaLP98TDNA
	 SY7hDI8G1vvww==
Date: Sat, 27 Dec 2025 12:09:30 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: "Han Gao (Revy)" <rabenda.cn@gmail.com>
Cc: Icenowy Zheng <zhengxingda@iscas.ac.cn>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Drew Fustini <fustini@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Heiko Stuebner <heiko@sntech.de>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Michal Wilczynski <m.wilczynski@samsung.com>, Yao Zi <ziyao@disroot.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	Icenowy Zheng <uwu@icenowy.me>
Subject: Re: [PATCH v4 2/9] dt-bindings: display: add verisilicon,dc
Message-ID: <20251227-gigantic-handsome-falcon-3c31bf@quoll>
References: <20251224161205.1132149-1-zhengxingda@iscas.ac.cn>
 <20251224161205.1132149-3-zhengxingda@iscas.ac.cn>
 <D5A173F1-D439-49FB-A4A0-B632550BF35B@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <D5A173F1-D439-49FB-A4A0-B632550BF35B@gmail.com>

On Thu, Dec 25, 2025 at 05:45:00PM +0800, Han Gao (Revy) wrote:
> > +            dpu_out_dp1: endpoint@1 {
> > +              reg = <1>;
> > +              remote-endpoint = <&hdmi_in>;
> > +            };
> > +          };
> > +        };
> > +      };
> > +    };
> > -- 
> > 2.52.0
> > 
> 
> Tested-by: Han Gao <gaohan@iscas.ac.cn>

NAK, not true. Otherwise explain me how can you test the bindings.



