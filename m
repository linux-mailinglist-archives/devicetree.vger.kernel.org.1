Return-Path: <devicetree+bounces-264147-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uL8tMpNRimmmJQAAu9opvQ
	(envelope-from <devicetree+bounces-264147-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 22:28:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CC7114CE9
	for <lists+devicetree@lfdr.de>; Mon, 09 Feb 2026 22:28:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2FCF43019927
	for <lists+devicetree@lfdr.de>; Mon,  9 Feb 2026 21:28:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36D9B30F53A;
	Mon,  9 Feb 2026 21:28:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="lliXtfSS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F98830E856
	for <devicetree@vger.kernel.org>; Mon,  9 Feb 2026 21:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.170
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770672527; cv=pass; b=fOy2zEkKS5JEkqIZSvcI9xegFm+mhDGAmwegk4w4xubkGgRsAukx6HE7K7WcD7T0qn3Uhp/R8mFMqzCbYQrfkoIfGdnPCuJ94BKQ18LaJo4Wiiy++8fEZnRjs95a6TSyvEKhIgQ29+J/fBzRAFLf7+4PnxKL8RUl2uY2jde1RDk=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770672527; c=relaxed/simple;
	bh=7VxxRCEOKnnPs1JTdwiGqaK47NG0gxr65sECLL3hgHc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q8Mlvx8f2MSoOrOU5JpgDzPvIcKeGEJ6oOZGajfTTFyklStkPXhwCDs+0ryu4JuH/C9Gh2ES+6jcn6XpVb/q5cTrJERreWN/5FKbSm+H7TB6SkoineZYxln343sfrVYN3sKrh549zPMwiGNgU3JgolWnjgkSck7boaRdFbK1Msw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=lliXtfSS; arc=pass smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-2aaecf9c325so9200135ad.1
        for <devicetree@vger.kernel.org>; Mon, 09 Feb 2026 13:28:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770672525; cv=none;
        d=google.com; s=arc-20240605;
        b=IlJXmsfQDT9CtmLhCyfgmcvWR37cTgxMg/psk5wJCfoVd5WfjOaX2RV1WIZY9nJgdW
         Fim8X8QeQlsptmBH2KQ+H4oXzJ4F/XrF8xGwVF1xZviTY0qh8ITp0ihPU70UexF/xcLn
         quIJ7GyWbS3eHzB2e3DGXBNZOXryT+Jf7wRCkGPye40Duqp7r4MtihYXnOvNdsN512PS
         BTSUvB6CwV2LRylyD7yYfq+90As0QYpCAKtyCbktXJot0ZBujrC1QkE8tqAfVBu958GS
         qw9u3yZWWznUC1d/2fPTIcC8ajLd8tBpfBFrOzAuS+aO/0HafBKNLdU94CL0mzd5RTF5
         3ayA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=k5FyOhy1MJGzIJn1ngR3+3z96yOozaG6Ty++CDkfdvU=;
        fh=2kXTKzN0lDjsfFRrwmgT497/4MpQwPS5Hw37DqNSb1E=;
        b=IUtPaS6OE5jNi2fQO+ByQU4jik/yl91H/sGStxukZQaAVILCtuMNEYIDQ3xH6TMM+r
         p/LPgSFmU/E2y7FSnmvi5FVmfI7fRZomt6k2IcGfaAJORDrwyCNwMLl1ky0owKJe2fFJ
         yWT9YfbsgvBvNRJG960Kiwo4xX/O9zlkoF2zRAYsWVnLEPF9W3LRPA7XbMenXOwUq3HG
         AcdBQGVNeqTwOSPBpoT4zaxG3jFQUow4PY5p2ZJ9Ql32UujE6wpPb/tyNwOlanK7BmOC
         wH6Qr/xzRfIyGIZgAsWYUQxU9szUbO0fymbifCkcboBmshAD/+w1pHjUqQG6i+5Upb2B
         kuRQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1770672525; x=1771277325; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k5FyOhy1MJGzIJn1ngR3+3z96yOozaG6Ty++CDkfdvU=;
        b=lliXtfSSblamQDZpJMmNHXYwt3eEpHfg8DqTJk78TXldCuOK4mD3+g1XSfiD1S5sa6
         SbsUo8h7tipmgGHUfBI7Bi0rmrCnuKfws/MbrDSLO3VSskxygc3k9FE/niTPoq2UvmVV
         SBMnmR53t/eDil6s+kBGn+JRvdy3+pGpcrcXZl82G77nT2Z0jc3w4FWszNOI5zWQsFny
         Dl3DqbvCZCP6rlHHGY0WAOhnCo95baHiM0siE/jyuAo5lCQ3J75KWS86H6MAn+rPnf7U
         FM4wkM79jH/Bs76Rg2UytbzqH9FtH5RW1Mk8K3VVWmY3YVNACkC8mWTUolE7WI2MfkO5
         vD+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770672525; x=1771277325;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=k5FyOhy1MJGzIJn1ngR3+3z96yOozaG6Ty++CDkfdvU=;
        b=Ws4pXE7mr04guwmZjA2+TrBDi6UWTiqTFtU3XXRNmLZrshxiUL1ae0tNmo+6SgYX4H
         elBKqI/0jWt0+C6PMbCU3dCT+1AKeG6hy+5eTAcnNXahhug6+EuaqS9r4ljxT3Xshb+G
         AMK0ArlBvlGty6vvLuhFiq7ffWgObTuSXbQvFBi4v7ldgCgEOzS/G6Hy4iBR9uwnctf5
         KFmLCxYr9tNNOXDvGZcpwWYNOheMXAxBTm8h8cXIalB4T2c2vjPSuPErF5keumeYe4Iw
         +WTRsQIEDemlR810ORerCCa2360glnZV3JheCrAQiYNzoiU8XbACGPvHSrWXjLHt3XW2
         dr2Q==
X-Forwarded-Encrypted: i=1; AJvYcCUQamgscP5VXoYmJ6lsetRcVsJ2uzRcHunH2641WcYiaTC+FEztXArzPVJjOv1YmNrauasnrA09EJYP@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1WIbBLHZV2RHCF3BofoW2lMNmSKqTlxk+fGgRRVcD1wuBmJjI
	otonsWC1Pi1fmg08oZqVNSEfXQ/dn/TwkIOje3GctGSq9UPUWFKGYJtXzyMLhbUWID1/yWzV9p3
	u8vjhsgh/2gtczNRMeGPOT+zMTMlhJrw=
X-Gm-Gg: AZuq6aLEoMqtgC9+2QzT3v184MflDf++QTs1H0RNAEyICKshku8b3wkhbZpZezMuS05
	SpfMLh5hQYgeIL8NUU7GSdkt6S+DsT+XMhzAUfYiN9FtZZD5FIdEhI+4C+9nhCqPEPo8pmrUHxp
	BCPhb5RJK43VTQuBlV69ityLnjjzcBti+pI7A45j16GkeTglgHKklNNLjUapJnr4Spxs1mE7HSQ
	0OgmvKI/KcMyiVJQVRVp1nalF/GCKa+Fn8g9lqf9KOcrs7c7OHRa+TO39fk8nB8HE0yJ3ENbPZD
	J/Sig6GVcOc1lqydC96dHqv/dpvY
X-Received: by 2002:a17:902:c942:b0:2a9:5ac3:a925 with SMTP id
 d9443c01a7336-2ab1005a1ccmr1466005ad.3.1770672525352; Mon, 09 Feb 2026
 13:28:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260206-amlogic-dma-v3-0-56fb9f59ed22@amlogic.com> <20260206-amlogic-dma-v3-2-56fb9f59ed22@amlogic.com>
In-Reply-To: <20260206-amlogic-dma-v3-2-56fb9f59ed22@amlogic.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Mon, 9 Feb 2026 22:28:34 +0100
X-Gm-Features: AZwV_Qhsvy9MKoHxeyazUY3RMdma2GB_qfE0DFHV76hqeFYCbzBl5BWm6SyiZlo
Message-ID: <CAFBinCD5ZzjQc6ve-zZJ0MqN-a0rrp6pHYf3X_0ao3MRwi2Jrw@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] dma: amlogic: Add general DMA driver for A9
To: xianwei.zhao@amlogic.com
Cc: Vinod Koul <vkoul@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-amlogic@lists.infradead.org, 
	dmaengine@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_FROM(0.00)[googlemail.com];
	TAGGED_FROM(0.00)[bounces-264147-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martinblumenstingl@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[googlemail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,googlemail.com:dkim]
X-Rspamd-Queue-Id: 29CC7114CE9
X-Rspamd-Action: no action

Hi Xianwei Zhao,

On Fri, Feb 6, 2026 at 10:03=E2=80=AFAM Xianwei Zhao via B4 Relay
<devnull+xianwei.zhao.amlogic.com@kernel.org> wrote:
[...]
> +       /* PIO 4 bytes and I2C 1 byte */
> +       dma_dev->dst_addr_widths =3D BIT(DMA_SLAVE_BUSWIDTH_4_BYTES | DMA=
_SLAVE_BUSWIDTH_1_BYTE);
I have not seen this way of writing two bits before.
Should this be:
    BIT(DMA_SLAVE_BUSWIDTH_4_BYTES) | BIT(DMA_SLAVE_BUSWIDTH_1_BYTE)
instead (similar to the line below)?

> +       dma_dev->directions =3D BIT(DMA_DEV_TO_MEM) | BIT(DMA_MEM_TO_DEV)=
;

Best regards,
Martin

