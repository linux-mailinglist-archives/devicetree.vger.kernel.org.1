Return-Path: <devicetree+bounces-270761-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mE1ZAttKp2n2gQAAu9opvQ
	(envelope-from <devicetree+bounces-270761-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:55:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C451F7057
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 21:55:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5045530789FA
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 20:55:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F595388E41;
	Tue,  3 Mar 2026 20:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="a0K4k1HO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8EC3876A8
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 20:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.218.42
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772571332; cv=pass; b=r8a9s8kztYJTMe/YrM2BMZz4NzmLlZIdJYyetNpLAZpoNqSRg8Y4iVQIBnh0cJwbEBnKU2k+2HkGpPlxTFTbRmDCrPIZB2DmyelaRF9WA5dR+tMtuXDn3nsGqd3wa3BMvGiWQa91Rp5O1RwzZNVb1N7c0UjehqDRMgaGGXxG2TI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772571332; c=relaxed/simple;
	bh=QTcUFUPPKl9O5H+yEy/BveB8689m0SStI46+e//eW5M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UkowcOsY7mV68xPO8v/i/snxL14zihxOo7sJWLWtjQfoI97rzK3W0WRRyBPtRtXkGi2c5cJInFxxDOcq04WTQfjcq0te0W6+DhpDJ5ENqOR2DtgO11ICXwF6IzpFEyKY8JJ54WcsK9SFH+2bg4v6b4Yl3rDrJBs/oG/193gTBWI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=a0K4k1HO; arc=pass smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b9373af81cdso876546566b.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 12:55:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772571330; cv=none;
        d=google.com; s=arc-20240605;
        b=OoeeKG5rCT/t9ylOpwE8neWlUNwpVxH8LGY3zgrP+LShuF7nepz9X/daXqIqhjcPtX
         MlNQsKr31d7+MCjEEBA8VuiByzN00vRDDZipgwx0D6KSsNLzLyg3YMOL4RqF0F3pofY0
         48JJlFNZkGIiWu5mXbCso+LBxTfEEa1No56MrPDYIgGqbuJeW1b8zsaDvPn56XlzLN2U
         h8SsSsPNIt1EEBnfNRlYNf7yD23W0F0s13SMBuyNG3PEvXErrsu8NljFmXoyg8Sz7x3s
         Ae6E77+xbPFlVicnFzlwqJjrvsuPRgPv1ySpsoHwYpDh4ggaZWG/hluLtHy4HUEjqjuo
         YULA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=QTcUFUPPKl9O5H+yEy/BveB8689m0SStI46+e//eW5M=;
        fh=hvIRsxlnf1Ceq3XTWEkcRraq4VZi6KlC6SZK+F2jvP8=;
        b=NY/a3QJIkSDOAoejEXI1WVUdqfGuOu+gub6SCuXrQU8TtgrOcV54tVkP5UyP8l4Vsr
         kubTs2ui5uGY0Du4H/KhC2lUKpDQc/PndMYjjvdzv6l93mPdj30ZsjqbYyXAdg1kLXjo
         5ySVX2dGtUZfUzX/3eapZGTXU/WeDMBX4lRQKHL6VCgZ8tMOt3YC4WbsyarxkqcYzY6Y
         ebMuch/oh+iKonuDyYDWOsC1ajxQrWJ15WweGZfaRXbZ20AC5/dh941lrWBEGA3zfUBg
         t2k1TGX2voJGzeQF/YWS+PtncnaZA9lEAzqUCI18sknZY4P8RDSzyqZQx3sHIA4CrihB
         cxrw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1772571330; x=1773176130; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QTcUFUPPKl9O5H+yEy/BveB8689m0SStI46+e//eW5M=;
        b=a0K4k1HOR0aDj9JNmjm5GA5qewElxm68KyD1Oa+ImKKV8ywZFBGBTzfnXLYgNsNsoE
         eR/lnd0Wm/iGm6z/Qotp6XOZHYY7pyqfkq17fE7NpyMzeZqiifbnelRc6Eyg84kID3/m
         H7LMgaqQXTbGHDX+27ivMnaaPRlF+sBaqxmFjJUGpq2sCaMezZvtHH1+UcEv3YyKU2Y5
         sfOZLvukltA0E0Yq1j/BL2y1drg+MACRF+VhC4lCPMQdeoEONJpEmimyOSIcj1vMLxN8
         XMFrHoQQc/Cn9IlWlVUge5PcigklJSDKd2hKJiswpmTMcRXBlMV6wIqB87xYe76jpXca
         AikQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772571330; x=1773176130;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QTcUFUPPKl9O5H+yEy/BveB8689m0SStI46+e//eW5M=;
        b=O6UKpfvOYpY/KZhFBRAd3KyBVTyhCoozpHCliI0DkRl7IWqraHu9MFOdLF4+r9blvK
         zMyYsGL8S/uRv/0kX5gb8xKq/BlQOPhzf/lht0x5y1OeMs6YjfeYm21Cr4vMBSR+mbnf
         TFeybstbhWiFSkyQxixuYfyjTTVoH5YYYVEZxdmnENtGLc9l3GookK+MdWL6GSJLvghV
         B1Zb7NgFsLdW2J0FiMV7ojWLDKvyVuUVqSSPHj/RtBbaq+SagoKr4bUGH7LpIOzbgxBC
         gT/OeftxkhcXw2VJ30ktg0iS5VsKrW2DKlRNYEwN6zqduvq7o5pocObOx5gborcyVjnQ
         JIKQ==
X-Forwarded-Encrypted: i=1; AJvYcCWPBdZ3nanEvLoT0JRPNbNlqpnjqXZq3WpQK4r7RxC/Y6qf3sZmtS/cgECATnKr8kjCTTgq/9gJebcj@vger.kernel.org
X-Gm-Message-State: AOJu0YxBHGFcEeTHVmWbwYALqinzxr7o8tu4LZCcZh2QvBRXamOv4FTj
	8tne2gjKB1xBCN+TsLy1FCoaKK1xN9iKo/hjeewuJ2QORlHqGyjgcLbaOLpQHw16mEiKXFi5wLy
	7Atdf3nOF3iRzDW0SA53Ae1KtEV6fb14UcDZaX3c=
X-Gm-Gg: ATEYQzxdpG5LhRJEDd0BzOgFoHySrY+PK0m7ZwulAIEM7RqPcZJDPyIGcKTXk0fUhH5
	S02Peif+/UzmINx2mypwPiXbTk52zMwAhpoA4V21jAdiA6d6GFB4fd3V3Grq0dmNYoYipC1+LTz
	ropaLoy2Zbx08H87d2DLyPtbZ4F2Z6rGtByxixPmZVLi+FCC8JDUnTWQc3Y1m7N5tRkvHPnTvPg
	mypUsgzZxYqXfeTDy+beP7gii7V/fC23Dd9fNmrxzAWSCSaZeI2AKHQ813KejJo1z6K3mKCygMA
	4DHNHFS8A4JDzLNWs3em82g33Tvj9PASFG3l
X-Received: by 2002:a17:907:3eaa:b0:b87:117f:b6f9 with SMTP id
 a640c23a62f3a-b937636cd7amr1077404066b.8.1772571329176; Tue, 03 Mar 2026
 12:55:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260303-b4-dmabuf-heap-coherent-rmem-v2-0-65a4653b3378@redhat.com>
In-Reply-To: <20260303-b4-dmabuf-heap-coherent-rmem-v2-0-65a4653b3378@redhat.com>
From: John Stultz <jstultz@google.com>
Date: Tue, 3 Mar 2026 12:55:17 -0800
X-Gm-Features: AaiRm50eZ6b1R9zR4BWk_SQv0E5klHORf7__0-5ZUwkb8RwaEPVqJM-v_erZHak
Message-ID: <CANDhNCrVVGsxEjgRcVJSn_E9WPUVY_9zpd+t0X_Jy7JqbcHDqA@mail.gmail.com>
Subject: Re: [PATCH v2 0/6] dma-buf: heaps: add coherent reserved-memory heap
To: Albert Esteve <aesteve@redhat.com>
Cc: Sumit Semwal <sumit.semwal@linaro.org>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, Brian Starkey <Brian.Starkey@arm.com>, 
	"T.J. Mercier" <tjmercier@google.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Robin Murphy <robin.murphy@arm.com>, 
	Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@kernel.org>, linux-kernel@vger.kernel.org, 
	linux-media@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linaro-mm-sig@lists.linaro.org, iommu@lists.linux.dev, 
	devicetree@vger.kernel.org, echanude@redhat.com, mripard@redhat.com, 
	John Stultz <john.stultz@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 67C451F7057
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[google.com,reject];
	R_DKIM_ALLOW(-0.20)[google.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270761-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jstultz@google.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[google.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Tue, Mar 3, 2026 at 4:34=E2=80=AFAM Albert Esteve <aesteve@redhat.com> w=
rote:
>
> This patch introduces a new heap driver to expose DT non=E2=80=91reusable
> "shared-dma-pool" coherent regions as dma-buf heaps, so userspace can
> allocate buffers from each reserved, named region.

Just a nit here: Might be good to provide some higher level context as
to why this is wanted, and what it enables.

Also, "shared-dma-pool" is also used for CMA regions, so it might be
unclear initially how this is different from the CMA heap (you do
mention non-reusable, but that's a prettty subtle detail).

Might be good to add some of the rationale to the patch adding the
heap implementation as well so it makes it into the git history.

thanks
-john

