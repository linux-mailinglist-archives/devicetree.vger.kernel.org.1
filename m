Return-Path: <devicetree+bounces-136505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 944DCA05688
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 10:17:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E27BA7A03BA
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 09:16:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33A621F1906;
	Wed,  8 Jan 2025 09:16:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="dpFARGVV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541C2181B8F;
	Wed,  8 Jan 2025 09:16:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736327816; cv=none; b=lt9mS6ad/AVUJMJlgKNsAm+q26fqn6qQVzaamshrWMWBqysGw6z1AwwcK6Qr3BMcrTOeTdayvYJIDy1X5sUR0ehsKAvMAXZJ1sSNlDcK2vfSc5QGGyqK+CARIkDyaTqi/Z+GObgjKKcq78HJJcDUHv7dCziq0hncrE22Q1Ll8HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736327816; c=relaxed/simple;
	bh=b+lsaFQ6qjDO50EbBx7FyJYhCbTrcZAazW4ep3ah4bQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=M20lUuzHBl2T/llGKQHLskvEhqwt+mIQHgJBM22fxb5b5VU8IfP4pFXLAoDsYw0Z6r7uIZLNp9SwxekUtRi24b/9OD+hXK/OHu7Q5bvwn5+KzMtIZLAyHjWDph9BEuaGviG7wq0oEvtDkjiMEpd7nq11OC54CcZ54lCYUjqcdCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=dpFARGVV; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-219f8263ae0so195310255ad.0;
        Wed, 08 Jan 2025 01:16:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736327813; x=1736932613; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b+lsaFQ6qjDO50EbBx7FyJYhCbTrcZAazW4ep3ah4bQ=;
        b=dpFARGVV9W7ThJPbTq/YYzwmh5jbAEI4J3tXqKCL4Tco7QGy+Ri2itHpV4gQbbT9ZQ
         j3qKA1qGCp8+v+RiedbTVKp1kaIbyajFfNEoLSYhonMnmubl4Pq8mttx7FAUCYAC/esM
         8umtDEb7yOdDCImC9qgeT9yCIxVxW/X5JfzehZieN0+38UFcjrvBnGOQ1wCTdp53ycol
         j5UwMYnesCUxVbE0NY2hKkVEcU0+ivngxAe3r1dnJJFrexNovbSFrKLKhs9V9i6jSExy
         BWFBTlMd8ToeBlbSvfb7DLfj9UhhPoQwJ/ZcQjkvDX1PgR43/eK+1NrY2eGdMHSJbLcZ
         Elgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736327813; x=1736932613;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b+lsaFQ6qjDO50EbBx7FyJYhCbTrcZAazW4ep3ah4bQ=;
        b=n+IrKaD7btrcRAw9h3Gdbcq7Q+W/+jPU8sWuMCVcZ53AfZnk+lE3mxkkV3sZakZSOz
         T3EFncq5XLhvKJZllI3lPkmSZ8Y+hfsj8r0kLQK6z+Moq0lt7tZ9nxcNEX/3YZN71A9Z
         ifaWmGcGwWR5xcqOVej/zBEunvUlG/FSAfkKa/TbGQObFah/5BqZdJdv3s+oFhAr7xOB
         AFOEKRroU761OYijB98mCCYpER5p1ZLzaxtNDg7U8kJUt/eYk6NJ+nDkjFBYmFPOFbf3
         exXi8sTtQSnFJYyA+JT2E74tQ3rPsak6fSIPmC7KJTHS6a8aE7ptCdPjEI/z/lOF3X5K
         J0Xg==
X-Forwarded-Encrypted: i=1; AJvYcCVrbhnHNi2y0sixbjD1CSrUTGI4lBjQH2G1CnSB5vLywdsFsYUrwGcWGeaoNllYoZrlj1MSPbUQP+3z@vger.kernel.org, AJvYcCXqwCxmC3Po6TDE/u904G4Me5OIepoPwG4QWfJludzQM7CzxYSAlDMzFr4wS/KqP+bUP2R3dGoysHfq34Bq@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7jFiHnZg7npktQRyl40O66ax5qshluqc2Dzgu0JLi40TulE1l
	qrpzEL9ZLVIpHdIvCH41CNshZTFuD5r5DTsVe6uZ0SbcUNOfYAo4Qv+tSQNfuXMpk/5bIKhHWIr
	5f3Nu18/vgnHhTkRhn3TIXDyoKMSt0a+kOtREFsatk6w=
X-Gm-Gg: ASbGncuKI2LrOx/45uz69+VfugO+pguA4ArCfdmV1yTbIvFqOr+DqwOuIJmrqw2rrdO
	TlKBXeUknBnW4pJdla+UIuU+FPEDcWzRzW9lRwF2j68fig+abtA==
X-Google-Smtp-Source: AGHT+IH3iOc2Myq1ZFaIa3sLIrFF2t3w3HdXbphVO11vWiGihfTl8kdvLLfGeZBOO3GJq1a+M+hcUjbLLuFVFCQP8Aw=
X-Received: by 2002:a05:6a00:4502:b0:724:f86e:e3d9 with SMTP id
 d2e1a72fcca58-72d21f64f72mr3418520b3a.14.1736327813534; Wed, 08 Jan 2025
 01:16:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250106-rk3588-h96-max-v58-v1-0-d25255f851fc@gmail.com>
 <20250106-rk3588-h96-max-v58-v1-1-d25255f851fc@gmail.com> <n4p5ixqoqm6innjzqk5wlcugok737f6yv2zto2sdgpm4ew2bhq@3bhqk3mkott5>
In-Reply-To: <n4p5ixqoqm6innjzqk5wlcugok737f6yv2zto2sdgpm4ew2bhq@3bhqk3mkott5>
From: Alexey Charkov <alchark@gmail.com>
Date: Wed, 8 Jan 2025 13:16:40 +0400
X-Gm-Features: AbW1kvbaaglzhbFnXw6JwID8AFi1sMusKHWcifZ0v6WJbwKA_uyX39-6rXdPIWo
Message-ID: <CABjd4YzZ_uf1J9ARxsuH161hfM5F-mRxo-f6DcUGZHAoi2WLnQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: Add H96 Max V58 TV box
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 7, 2025 at 11:11=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Mon, Jan 06, 2025 at 01:07:17AM +0400, Alexey Charkov wrote:
> > H96 Max V58 is a compact Rockchip RK3588 based device that ships
> > with Android and is meant for use as a TV connected media box.
> >
> > Add device tree binding for it.
>
> BTW, this can be written shorter and clearer:
> Add Devicetree binding for H96 Max V58: a compact Rockchip RK3588 based
> device that ships with Android and is meant for use as a TV connected
> media box.

Thank you Krzysztof, this does indeed read better. Used your wording
in v2 of this series that I've just sent [1].

[1] https://lore.kernel.org/r/20250108-rk3588-h96-max-v58-v2-0-522301b905d6=
@gmail.com

Best regards,
Alexey

