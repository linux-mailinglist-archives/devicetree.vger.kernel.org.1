Return-Path: <devicetree+bounces-269010-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EK2QB67AoGk1mQQAu9opvQ
	(envelope-from <devicetree+bounces-269010-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 22:52:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id B16441B0174
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 22:52:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DA23E3006680
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 21:52:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3DE742DFE9;
	Thu, 26 Feb 2026 21:52:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="VtxfBkLu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89CB13A0B30
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 21:52:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.214.182
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772142762; cv=pass; b=bGyjYaQNpi8Q9CuXX7Kqhdz3JsizVVTThBZsMDQFe1AvDzULBBi81HCV6pDWXr5/nrBhZ199gww/NfG5GzVMs44XLexu5TmDd5BrWXzxcZgoOzVlNxWlqKMvNMf86hwN2p0Up5vs/vKwwGvOc3SysvbpbCbM54vuAI1nvXseyGc=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772142762; c=relaxed/simple;
	bh=hgWhFrJxUjCiTsRCdjaJqD9Hpa6wgKra0nSpG+3GZbQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Sq0JlSI6sWOj5JOnluXI0GLBhBdUrqoJyA9mRkUX7+G5BdEAquqMF3qhb3kc9XWEnMScU3fJg9Lc+wUJ3DYqdUUUpi6NOi71p+5dozM8n38WpQHOxO9b05tC5sllymJoBzoqwJNu3DfgV2B8jZsOQbRb4qg9M31oJi+XHZCLJIU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=VtxfBkLu; arc=pass smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2ab46931cf1so17842465ad.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 13:52:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772142761; cv=none;
        d=google.com; s=arc-20240605;
        b=MNJq+U8Of7w+GK/Y0r+Kf5lXar0T9dmQUNT34o+8k9gSdIfke6PzGstl7Ok1QuqiXE
         7HnMLUpnHBAUtE5f7iQjuB+nJJpoNg+E26hUeEOegmdi3MRb5SgHhbhNyzAs3IQwbAif
         GJ03eeoWHqh3BlTJ4rSIglO8wYd5qkSF+0GOUq2zE7eWAey+HiYVlxKxpn+ZN1m89KIe
         3DO7DOoYregJe5LyYUAenU78s0TO8FGB8WOZMBMTeT/4dlvIsZYCQmoyvd0rNcN6pFY6
         HbKfGvoi6o5jIo4W2TAkF5tvr4F9DT5G1D4zi5Hm5x9gI5CnkIAIE8Zo0pwThbNDy7dU
         qK3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=hgWhFrJxUjCiTsRCdjaJqD9Hpa6wgKra0nSpG+3GZbQ=;
        fh=5NIOH/pGkd25auVlzAYl/eC+wxKmB6CiiDelebVYyt8=;
        b=V+qkoqVo8gOh5OD9AJcQeq2zVfCvBo3thYaXGcAy9jwQCAnvsSiKOReXZgUyMt8ztB
         LE80KH+ld8aP0HRFJcpf3cMettU9m/jtZ1Pk3je3elsiBjPm3MudJ3wpHd1cghrBiXhk
         7LXZ7V5Q3lCLtDJy43aEenxc64WBY2sFUb04V9NvwpCRM/Mci3wbWlHI/zoeTHRsKOPP
         uxNlyOHC4ml/1zbVC7ecAFtLNH1n6n/HrR4HRnv4wgAAVc2LyyUSM9KqwHZUxcLg6F1E
         w8JyhjkdOce9wsEkkwSw9rze3+DsKSoCpjcCQPj+DHyAqCmRCz/sw/6FDtA/MvLJvzxq
         bQUw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1772142761; x=1772747561; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hgWhFrJxUjCiTsRCdjaJqD9Hpa6wgKra0nSpG+3GZbQ=;
        b=VtxfBkLuGXkbLHOmzAjIc+Z8NgxZebICOFVhM+Pmy35EFjSpgrWSLfECpqYpxWm/Wu
         ECEe9eYqtZadji3bdtoTCWI9AOvKpwt09OkHy0AhhhIdbDLIkcCl7BwSlcVRrCRTSrDJ
         HhUvcnALrrd2sGrZrnGxdcXK+Qx9Ij+nPTGlbfpzjCxtOcFj4Ac/z5MoWMUZqxoxlwPn
         JeI1Qvxy1xWNGQw1L24QIAOf1t3aIGa7758p00PaNkT9u/OfTqQodOppD2ecsQ1sMzUx
         7ItryGBoBPuTg0iIhmgMK2kOYg/g/RRlPtVd2YrEwAORIeJztzjLTY58UCsAqmW7XkuX
         OHoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772142761; x=1772747561;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=hgWhFrJxUjCiTsRCdjaJqD9Hpa6wgKra0nSpG+3GZbQ=;
        b=uUwRT76enhoRRSRU6lDuGL4h5NAyso0f33gqy/gv4FG7n3byJ6208y0HO9Nq0cx4+J
         UTgHESFNpOZ1BtzqP7tO47AE36Ow1+YTHJGhzuHvX22bOe7Rgt9nIs3LRIlsLFprGO6U
         gkc95HzWyp3zhov56seDBs+ECW4nF1fq2JkARInfxVL1ED9tBvt+CstiwA0f9ih4a8gp
         3gcYbLkonYRBsucgoNO1ciqnz/n4r2nwGgA5q2OggCn07FLrefdWyEeAXLj3SghLXcZX
         yvtuid8agSiKxaimi8FIaPD58qyBXwLo77ZUX65V3HXDwjc1UG8q9UWEtqsDVqnsXbbw
         F2vg==
X-Forwarded-Encrypted: i=1; AJvYcCVzF7YiR7LAlweHYwtw/yfeOSTwS/tZ6CHMS1BvGzS8LTVvo22m2IgUZM1UwsOuI6g+2TklKtKjDEHP@vger.kernel.org
X-Gm-Message-State: AOJu0YzWGXJy9nflWBR7qeOhKFU1lQ+FBtZp3K+O05v5baY4kx0JWVyu
	UfTi08A+stpTfJjeqbVE+ykgfjLr2IIwiWx09C32uSblnKKbcg2T8GGv5uNOREqN6YRP5sf2cRo
	upHip3xFleK+c/c0Oktp9Ci1XYZb/b4w=
X-Gm-Gg: ATEYQzySLmXyUpLsZ3m7O8k68VjvNh0FAl+k97C/D/3paoNL4NjBfkt2Cbu+tea63RS
	G1egN3kih1c1614hmiRSMrqKdZRKsherbsE6uLXb0pGLXRePo8TO4s14PeeR7Xv367UsaRHtvtu
	A5xDGwHjCDPmTQLS9Yle3FMdVRJekirJ2+jXB9gRGcL/LaXCCXuNtbQXZ0bTBOfuMZ5a1J8sUAy
	OjljofVPJeXnkye8GizAeWBw/rBTuQwZDW3ZGO5XYp19xnCDDLtVArJmg6yzEoT+/ylrGqqja3p
	fkznvNHHv2ZRJzAqOJG1wGd6pXCW4CjRQJbP1siHUeVhy4d4JG0=
X-Received: by 2002:a17:902:cec7:b0:2a9:616c:1716 with SMTP id
 d9443c01a7336-2ae2bbde27emr4684925ad.26.1772142760989; Thu, 26 Feb 2026
 13:52:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260123022258.136448-1-nick@khadas.com> <20260123022258.136448-7-nick@khadas.com>
In-Reply-To: <20260123022258.136448-7-nick@khadas.com>
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Date: Thu, 26 Feb 2026 22:52:30 +0100
X-Gm-Features: AaiRm51djimkK_UgDeDWQGfUOzE1FCcEV_pCUmahQDUWiDkluPEZvH3ufqK3qJc
Message-ID: <CAFBinCBOQv7BBzqC6vo=eEV=rV_pPD4oLCWp-WL0mS0bUENE_g@mail.gmail.com>
Subject: Re: [PATCH 6/6] arm64: dts: amlogic: meson-s4-s905y4-khadas-vim1s:
 add Function key support
To: Nick Xie <nick@khadas.com>
Cc: neil.armstrong@linaro.org, khilman@baylibre.com, jbrunet@baylibre.com, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	krzk+dt@kernel.org, robh@kernel.org, conor+dt@kernel.org, xieqinick@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.06 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	R_DKIM_ALLOW(-0.20)[googlemail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	DMARC_POLICY_SOFTFAIL(0.10)[gmail.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-269010-lists,devicetree=lfdr.de];
	FREEMAIL_FROM(0.00)[googlemail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[googlemail.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[martinblumenstingl@gmail.com,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[linaro.org,baylibre.com,vger.kernel.org,lists.infradead.org,kernel.org,gmail.com];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,khadas.com:email,mail.gmail.com:mid,googlemail.com:dkim]
X-Rspamd-Queue-Id: B16441B0174
X-Rspamd-Action: no action

On Fri, Jan 23, 2026 at 3:23=E2=80=AFAM Nick Xie <nick@khadas.com> wrote:
>
> Enable the SARADC controller and add the adc-keys node to support
> the Function key found on the Khadas VIM1S board.
>
> Signed-off-by: Nick Xie <nick@khadas.com>
Applying this patch will require the previous one to be updated with
the compatible string.
Even when the compatible string changes (in meson-s4.dtsi) this patch
will still be good, so please add my:
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>

