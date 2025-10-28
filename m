Return-Path: <devicetree+bounces-232261-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A161C15F03
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 17:50:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E51D423044
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:42:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70B14340DBF;
	Tue, 28 Oct 2025 16:42:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dsCz8yYc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98F5E284889
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 16:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761669723; cv=none; b=Ud9/wTKD2fKmsokifpq24CVMRT7JURaX7WDrlVSd9u32s0n3qzc4dDx7V9GxcaY9DF5MvG68GRSwECrbQ2B4GxuEox0XCYZtJlOnt+C1EfOUXYipJ1eUAEfqYt2gYaPvAKN3J6xOF36Rqsz9H/bsnhOQ7EXBqOxzdEGwl/dZsOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761669723; c=relaxed/simple;
	bh=Uf7YRleoZ8waDLnTeCs4F/ntVYNVy3X0xp3jtNQa1cw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mnnd0JUXEte/Ib+47AqXgLRpuap7YSs7oaslabMRkD9U4ZoIrMUBdd6/fsKHGFaXsdBrOEVAsuHeKVfNEh+i+3IFHLWNrepmZGNWN8N0BTgncQevbUrllmMrxemDJLPZvz9jlJktqgqOOnYEfSjuqlpNc49kAb8ouTZLIpPH0ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dsCz8yYc; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-471b80b994bso85966105e9.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761669720; x=1762274520; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vhlYsnjrb8qWY7F5kdEd5kcGIAJVu2xCqJg/0zS6j5A=;
        b=dsCz8yYce4z6QUy5jbLUc4Q2DctIUnaYR3zPbDpom0lCSx00etgB2zgUlqVpRVW3+G
         Y4FdpK4qxF6UVAN6TYFZ9PVdP4jN3SRNDesyweNmVsSpq5zK003+IAkjEson5HW0MF9y
         OEx9ocDE8gM/B6lPsgUPWXvG1yOLNQYXGEKfi6/6JC1wqOSxqJIoSLZChLrW96blH9Hl
         Ckb3IJRwTSVbmGLU+kCbezZCm844n4QytM1RtrFSrEMd5KiUHp5OLbuQWlzX5LCPpqIc
         /Th0+zsM33ZSgxG1H8VVvIZ0nWvWM6wcEReYRB+jK3GVijAdUybMQcYqXAdmljd5JVP+
         lEXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761669720; x=1762274520;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vhlYsnjrb8qWY7F5kdEd5kcGIAJVu2xCqJg/0zS6j5A=;
        b=crxUBWaRFRt40AO6rxDFUPws4m9brQBR0wzWd1dKCCBt/wy5zzEBh69F/ABjgwDYcV
         rXQCMjvzpsv86AYOo4ZLCt8vSYFrwH26cBxfTSHsTbcSrUMYrW9ZAKAFR5j4ZylLIArG
         YG6Spx23sml0r0RQ3JoM2h7a6DMtr9AMdxGRNXRAV8xTn6BeEvQxA9dec4RaHY/Vzsyf
         dfGUcFqr8HEtk35WRabN91fjTmjxq7Qjc4oa5zQrlHCNVfUeHtYsmHGv9sdscJXsA91V
         RRpSLWRPJXfcfezo+2QWKfVIp7x6amp3kNaG47jaHtNapRAq+Bcqzavm1ia5e9OKswWV
         o7Uw==
X-Forwarded-Encrypted: i=1; AJvYcCXVrna6GUjiQUwz7vCDrh5Yh9pQJyuEaznEAuNm6j2fRC7x2RKLcOABay2XS/5EYsHF1diLWDOiiLCM@vger.kernel.org
X-Gm-Message-State: AOJu0YxTEfTbtIefwxKmfXHXL9iW/0WNKAoLV2E/8rQFnhTxjcbWECsk
	K0L5A8SOJtpLUMGvkNFQPIDjJn0EpHgUvYto9ciJXAeFdZkdHhfTwFEacVYvRZTEOV0=
X-Gm-Gg: ASbGnctO3Jy0gc9EOhWHP4lphtB0v6OY0a4F4+WZqPoEl/JqyG5WOrSrQWDC4I3W2zR
	BwQpMF37dz8pk7Fi+AB3dgXxj3mt/yNRb7454thjfgxTanK02KEGcD430dYUCAgpq0kDPYPqaIw
	ucU1zz2GVga/uJl7vUG1rSKj/sYkoM30YkbPBhudJJnNbrfF6wzsKIMYoa7L6jrEDXbPYpu9g58
	vRpJTwRD9J+37R6taCyRI8RAHHCZbMQAIss19b7tBL7dpb3REKGd32C3pGcpV8dueusH8wJXGxz
	Mk/aph0Fgiea9KQJj713fBBSZ4zGSFawYo2bisX1y5YqC9tw5q43QWzrdZpEPxkoCuvK/US+IGL
	MHSXLDTuADugRE1onIi3H4jFrwxCkDConImgjB+bG9H4ua4ZchuTRyza2617bNmwR5xO+v5Sy
X-Google-Smtp-Source: AGHT+IH7rrRXNKsSpeh9VK0VCQyJohBZG1DTw0Ze0pbjGzldvRlBrP62vUkIJ2C7Cpq9y6KonRG24A==
X-Received: by 2002:a05:600c:4e0e:b0:475:dd7f:f6cd with SMTP id 5b1f17b1804b1-4771e1f1181mr1161625e9.35.1761669719903;
        Tue, 28 Oct 2025 09:41:59 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4771e3ace25sm265145e9.9.2025.10.28.09.41.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 09:41:59 -0700 (PDT)
Date: Tue, 28 Oct 2025 18:41:57 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: soc: qcom: qcom,pmic-glink: Document Glymur
 compatible
Message-ID: <xuadnvmn3itiznukzxw3kbe6lg3kk4p3fvuz4ozxp7etllub3h@6knqgzz7popd>
References: <20251028-bindings-pmic-glink-glymur-v1-1-f76f00161f46@linaro.org>
 <p4l2d4mow3my5zzgjieqxldv7dybk7qgfx2yshlji5svaad46s@xprmpn2s6na2>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <p4l2d4mow3my5zzgjieqxldv7dybk7qgfx2yshlji5svaad46s@xprmpn2s6na2>

On 25-10-28 09:53:54, Bjorn Andersson wrote:
> On Tue, Oct 28, 2025 at 03:59:49PM +0200, Abel Vesa wrote:
> > Document the Glymur compatible used to describe the pmic glink on
> > this SoC.
> > 
> 
> This has been posted multiple times already:
> https://lore.kernel.org/all/20251017003033.268567-2-anjelique.melendez@oss.qualcomm.com/
> https://lore.kernel.org/all/20251027212250.3847537-2-anjelique.melendez@oss.qualcomm.com/
> 

Hm, my bad then.

