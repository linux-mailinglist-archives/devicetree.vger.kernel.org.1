Return-Path: <devicetree+bounces-269954-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KAaVI915pWm6CAYAu9opvQ
	(envelope-from <devicetree+bounces-269954-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:51:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 37BC51D7DFB
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 12:51:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 55EFD3069AF6
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 11:46:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FC5A363096;
	Mon,  2 Mar 2026 11:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DACsmumY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C7473321B1
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 11:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.208.172
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772452000; cv=pass; b=F/BYEIJ5bCyS4qe6493vPej+eg5w6PzP43VkKk/WlBUTOw5weHMk/qdcwgf9NlNKnIvA5LyugERtBP8I/nvydXbP17TVkfG3wIlHvj7cPBHBiYc/Q/9SVaZkyFBjSDZUhKj3Y3wHBYIlc0tuxhVEq1uLuHq/7Nb+PPIBk6kF6o0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772452000; c=relaxed/simple;
	bh=YRoMm9tcpb1MSZ5gauwCMcDnS9cCaBTbIIMjFRWOu10=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FT+D4mbOBGYUbqpdTGQSdNXIdcd6LWXD2w6OLqBN5mvVMODuXfnYrlnabJr0NS043ziwkxJ5yNxVvPcw/lNhsWOCw3wVxa4IqS5dUpbIpJYHcyO+GpFbjmifuy9MU89xbp4XQM7CkEUbHevfXfV3GGzMWCw0BF9j0+6fM0pmYr8=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DACsmumY; arc=pass smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-389f933034cso55569141fa.2
        for <devicetree@vger.kernel.org>; Mon, 02 Mar 2026 03:46:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772451997; cv=none;
        d=google.com; s=arc-20240605;
        b=PcpKPXuBzuCUYWnF7/IS6oJ2HAYffZhw8MXAS+e1HHO/WKXTnv0/v+zmQLt6g+0F5Q
         BLSeW3kHPrl7YVx5Ih8YaDSDiyNxmlXvsgWHoOAJjMskE9raoJqwNmiDRXdDdbO7FqN3
         SpIHCQ2pmR2n5lM6vHdlNAHFLaO12j+8Ociu/hj8oTqTKPecbqHdzDgqFI+ZCvQwOjLM
         /Zgr26vFXD5yjQIpTnbDj13PHkWxiFjcyvqCjGDxVxBwvC9sjmvCCc/48rb4X0WXdORB
         y+JzLpeHtkFjNdkLn5tqEIo3pHAHbFhQPpmRfs9gAk7UuwdunWiLQ2p7ULlCoELZPpod
         T6cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YRoMm9tcpb1MSZ5gauwCMcDnS9cCaBTbIIMjFRWOu10=;
        fh=nbuFN3nmH0oyDe5bTaLCxxHrZqGNjBsp021CP5bukV4=;
        b=LKKHN5yFP1qx3MzjAXEEfuzo0XtzT6IOGXuU3p5CUxodk71itEsL1sYYXgAt+BcGbs
         uaY47C8lhtk6dSnhhkkQnSsa6SS4VSCk663dJAx/jEsDc9rEUXqdgWWObUGRh0bqY8zH
         IcJKojZICIm0yIIzdFDy4TsQPZQWQwNfp3JM4M3ofUfC2O6Z02tpWlUV3h2ogE/SbtGw
         My1v3QyapgV878Lj1ZR/o5jNYKdhElTrvaq46ezYWn96fZB1EvFxNv+X/m7AZPG2MDgv
         F7zexX92dL7NqNGE6tITxh+W1ziz9KjXU07LFm9Hr8Gsu6DPjroKVTcMhPpbEy94cVe1
         FBtg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772451997; x=1773056797; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YRoMm9tcpb1MSZ5gauwCMcDnS9cCaBTbIIMjFRWOu10=;
        b=DACsmumYePet+xRPnhrD70l36K8cz+qUDTYZBEpCE3ADeiA7u80pFqEFkK8lAYzkdu
         h3sxnMet9lPS0ADMY8RvogOIvO6nY0Abl9EJwtuvsgysLIohrv0p0/uiqVu5tSBwEvb1
         FRAd9YEwbd6xMqEjD0E0tbLshbeSz+qqAmruCH+am6+3nStjTgeP25rIQvp0yH6gFDIn
         MA55VOcsjNVbVVX5hlVhWEFBAFn4B2Hyv5j+A29CbCF6BtlP5uNxDnqU91gPev1IrKTQ
         hxcxIjgByEAweaQVZrNVzUCboymrd5XhDB+laW91LvAWQONx7AJTyqeNfmBIwvhK1HYG
         XgHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772451997; x=1773056797;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YRoMm9tcpb1MSZ5gauwCMcDnS9cCaBTbIIMjFRWOu10=;
        b=BYSIpPqiPd2pplMnIfkd5PttDN4jIwfyMbvO7/K5iTY3PNl3YIgOEETjxC+AHLrymg
         zrdw0DWcL/7cXKzB+wYvRjoAh6m0Tk0FJhMdnE2QIqD1zcztj1OYSOxOEQlYUAK//Gnd
         b0jnKTbDXG8oH51SasU/z0LujtaXoaQn8a8Jd7EZjWrUwK0TlczS9S+EXgcB8MQJRfhU
         t/43QM9+OEgB462/uW1JLmWrM7WBeIWe9ET97Hu9egWPyOLBMYKOFodWgyuTu4Lf+zBx
         PIdeYMOQgemdqSjprwpDpZzY/X0u5O4VERQwJ96BvE+XjmqGZlisZVI5/987KvzLHf7G
         QQ6A==
X-Forwarded-Encrypted: i=1; AJvYcCWhWB89J5CyMWMxgHdQIJBt+q5p4ppvSihPkKjP4vZ5DqsHFsVJCEIMIur9U1dv5iKlxyX9+PqzS6ZP@vger.kernel.org
X-Gm-Message-State: AOJu0YxW/vbhMZCOydFct4gEV7/N4q/r6weP+sh116y2E6Ev+7hNkax4
	tqzPDEQNr9WFlpr7GvhWA2mSXhJy4tG+4BwaKC4zgTCDnADVCRlcC6FHd22nPpipfMLiMm+F/WF
	MgTbI0SFYxb/7gves+Z/7RRCNawD7158=
X-Gm-Gg: ATEYQzy7g94B8ZkmLMh+fm1tm71MjJwmN38VIMtUusO3QkxYm9lwU0z2+jUsae/g7hi
	l7wAhinD/8xxw8sAElZ2BRW5FqUfwWA+BTZn5ogMzhPIsPeqPIoL1fquji6rvK9oNJhwULhBGSS
	gMLKLIiqD164IfygCDDiIn2z9H/2IKV+hNZF+NjQWzk0hxtDf9ADFK5dxP92Zo0M6QWxGe+tL29
	1J8q+jdrn7VpPSx2zYhqUSHveoqZAb2piaVMhTpUaLmqSsIf8OCOE1OyLqbOus0pqHtDFtpf+fI
	PlHn/pW747Q4e4uOxP1WY+yVK/G4XkPSE8J+/bAWGewdLYmS0FDwzppD0OsF2kvrsjMt1ic=
X-Received: by 2002:a05:651c:b21:b0:37b:8b7e:efd with SMTP id
 38308e7fff4ca-389ff365c0dmr73246811fa.39.1772451997062; Mon, 02 Mar 2026
 03:46:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260210022620.172570-1-festevam@gmail.com> <CAOMZO5BdgjaHKA6xV5MzPLDetqy-+iRdVPn3o38vo3szcxEhVg@mail.gmail.com>
 <32347982.43St1lv6Oq@diego>
In-Reply-To: <32347982.43St1lv6Oq@diego>
From: Fabio Estevam <festevam@gmail.com>
Date: Mon, 2 Mar 2026 08:46:25 -0300
X-Gm-Features: AaiRm52Ngcb8bHgY9VS6WuN8uKXY8QulMVA8vk9T8aLZTq4kdlDYmVHrrjgwR2Q
Message-ID: <CAOMZO5AvymrELSnaHQ+cThcSDdPbayLPGwx-5YB18=0zm+oJ_w@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: clock: rockchip: Add RV1103B CRU support
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: sboyd@kernel.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-clk@vger.kernel.org, jonas@kwiboo.se, devicetree@vger.kernel.org, 
	Fabio Estevam <festevam@nabladev.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269954-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	MISSING_XM_UA(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,sntech.de:email]
X-Rspamd-Queue-Id: 37BC51D7DFB
X-Rspamd-Action: no action

Hi Heiko,

On Mon, Feb 23, 2026 at 11:21=E2=80=AFAM Heiko St=C3=BCbner <heiko@sntech.d=
e> wrote:

> I generally pick up Rockchip clock changes anyway and then
> send PRs to the clock maintainers, so that'll work as always :-) .

Please let me know if you are OK with the RV1103B clock and dts series.

Thanks

