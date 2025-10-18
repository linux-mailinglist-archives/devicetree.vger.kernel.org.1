Return-Path: <devicetree+bounces-228350-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FF08BEC735
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 06:34:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3B01A4E372A
	for <lists+devicetree@lfdr.de>; Sat, 18 Oct 2025 04:34:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48B1C1A5B9E;
	Sat, 18 Oct 2025 04:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Te+kOhnY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3E555227
	for <devicetree@vger.kernel.org>; Sat, 18 Oct 2025 04:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760762093; cv=none; b=lroNGcWgnDu0HRbE4BVQJIjoSwZWgV42iS9cc00Di48x6uWb7zSVa/VFyxo9KOvWmuZ2fpnfbLzFAIVmZz6+3dFwZvOj7ZwS+rNgfrxeOsHj1rLBc0qv52lFybpoUWEheWlGrscALetiwu9n/3hlLxZy7Om30sooBJ4V4RwGdCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760762093; c=relaxed/simple;
	bh=GxR14wtXNDXoVG4QYMZdHFm6watYk/xR3Ph2wB/HFgQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t+pTikgM8j7x7um2cyr7MrCnuPnLyN8Phb9VsL2JZCPkvSmIxYsRk5Gn/0wJ8L/rLKAjCcLGFf3X6ZaHXbbptxtY8pUedzmPRw0EP08+uQQVkc8tqjlF50ywcnuq+/uuOGW3TpxXcP0XoX9MZbJY6lA791iuIycA3ZP8QORCaYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Te+kOhnY; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-27eec33b737so38799085ad.1
        for <devicetree@vger.kernel.org>; Fri, 17 Oct 2025 21:34:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760762091; x=1761366891; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MvkiGnJycOUUb9mLccpGWZ9e0R42gUUGVNQEgcKUgVk=;
        b=Te+kOhnYivh5nlVMIqnn2sAClZL71svnEaGQx9q0BUedVrLtFuTITJrA4njAzfOh1b
         GDcaG8Fwzo+tCBgfJ17KsuAJhqNFDA8gAjqXGzLO2/LQsY7DKZosKLeoYkLjW3bCsaJM
         6++KONnE3gCsDrLcINpyGAXZ4AEGQS5pXKHdwIGNNgi3hxvNV6mLhZ/1UUPYUvMZOHGp
         yq1YFYleS7756PSxeJd9vSLFqDeAQJSMlGNeWQ8HBfLZaeCsvwdxTuqeyXnwX8v3ePn0
         CxjKLWOFISHi6Sikez0ftDbTSPm904xFA9S13vJU0vdIll9pGaofa/4eq7WfZb4nlZjg
         eLFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760762091; x=1761366891;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MvkiGnJycOUUb9mLccpGWZ9e0R42gUUGVNQEgcKUgVk=;
        b=BihTql1f/QpRtA9wPDfRAC7pn0kB7Re2uLspM2MIBKHiVvr6EgzSHovXkCUNxBoHA9
         bfIhpAkV7WbQaSr32qJtZQ17ocaiwZN2HZDIhSQqQboCO/fosqZ9RqL0GxLkruqovewd
         8unikTjX3v0mRF+wAGIuiB9MfJ8mTim12G3cYPDVYWHi8w4fP1TcephK4sm/18R9+a5s
         CNeGz4+z0VtYoKCTujPN8iV95bNCrB2n9JwW5X0FDQdi6VuuHzMlQoQXaUQZbvsUyRUQ
         Y2JWG6AWFRxmBSJquX0+BT89lGgFqFvzd7Rx7XwRn29XxtJ5lPWc1DVxPUVGCi7+70Qz
         0Ijg==
X-Forwarded-Encrypted: i=1; AJvYcCUSJDvBTt1urtp9wSwRJe4ctJSwKO0nUaJ3TFUMAMO12mWSGimiw4ZaPC8biV2YgjW77EQECRBxINcJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0azs75prHBYf2ghhe4WjM0Yr6WDGgYZfucBk23MJeaSfxhIU2
	KFyd0afkOSOVJ4KDuVzyVRljNwfy/3EBLpAC8x2/5taxsLypVNDfylvZ
X-Gm-Gg: ASbGnctFUvLCe2hTecdIT84YG2BqfkhD/9/FVRRbTkSzKfTyOG+yXjefEU8yeg6I6fT
	w9DdOf6VkC2akCrTw3+QxuiDAAQ7N9fc08oggiZ2JiB2XToeim0vQJTO97eRFi/Ajq5poXdS31O
	1qa9Ln1PjzfRQxTz7XMJLt3AxcSEItNIpDNWHYQLerbPYmxisG3+9tlx9LGbfx603XQXUGUOPqT
	X0CZ27icPk5IFWUpzVbkoq7h8uQuJVEM1xzS7yXkh71116isY7WWtVvc4rgTxuTuMej8PW0CMnz
	Db3zMkLr8sU0HuZyhpNvOI+E8u9U5CyL3uFGXcHGWl2qDzwdC9yzO4bwF3m+AoTDArbhPE4/z23
	/lXOpecL9LK0s2n9/EI9kFGEhLeQhiw0KmLhrGdttCEKplbQKk9tKw4Vo+bi4V6d9IuUpgUVEyw
	k+HMILPJmjl5uMAMovTSuB8nnNtb6TQITFMWIQ4RJefhtzJNzftSI=
X-Google-Smtp-Source: AGHT+IFuzxQOBI65vs3bpYxRhSg0TCMcUgkWO67CR9Y3kZQOPuLiNCx2YD5UCXS09TDtIujDvVhhEg==
X-Received: by 2002:a17:903:46c8:b0:27e:e77f:57f3 with SMTP id d9443c01a7336-290c9cb613bmr76175445ad.14.1760762091145;
        Fri, 17 Oct 2025 21:34:51 -0700 (PDT)
Received: from google.com ([2a00:79e0:2ebe:8:5e2d:c6df:afce:809b])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2924700a883sm12500915ad.49.2025.10.17.21.34.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Oct 2025 21:34:50 -0700 (PDT)
Date: Fri, 17 Oct 2025 21:34:48 -0700
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: Ariel D'Alessandro <ariel.dalessandro@collabora.com>
Cc: angelogioacchino.delregno@collabora.com, conor+dt@kernel.org, 
	krzk+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, 
	kernel@collabora.com, linux-input@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] dt-bindings: input: Convert MELFAS MIP4 Touchscreen
 to DT schema
Message-ID: <fxbpnzrxbmp3j3urthrvaws2cffjlbt76poareemwbsx4z6oro@tp7dy6qhinlb>
References: <20251001183809.83472-1-ariel.dalessandro@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251001183809.83472-1-ariel.dalessandro@collabora.com>

On Wed, Oct 01, 2025 at 03:38:09PM -0300, Ariel D'Alessandro wrote:
> Convert the existing text-based DT bindings for MELFAS MIP4 Touchscreen
> controller to a DT schema.
> 
> Signed-off-by: Ariel D'Alessandro <ariel.dalessandro@collabora.com>
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Applied, thank you.

-- 
Dmitry

