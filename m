Return-Path: <devicetree+bounces-245452-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D9BCB11F0
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 22:12:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2868330F7E84
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 21:11:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D80A1DF963;
	Tue,  9 Dec 2025 21:01:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b="WlWK3jXW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com [209.85.222.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BEFD1D5141
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 21:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765314109; cv=none; b=eyDkk52BoYK/Lrf60qkJ5KifRHpwuZfQods1MX4Q1guqI9dSBLsaGXbilLaqjD1ta8X4jy8w/R12lQC7W8kBiFbDYHiurdCdqhqIQWRNrx0LoS686+LKvJXCxa0BakfPnKUMkFIuKOPcMNsQS0osdQPgsSxAo/y1dNlSDcwYlUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765314109; c=relaxed/simple;
	bh=DytixCgKzPYMWkGLjIDT6E4coq1ku349GOMMd7byWFw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=CxNVp2MP/ETCzfgDjy4vNtY8oiwpWOp9ZzbobAuMevdK5gf+kMylOT1QwT0fbhew8Xlzaz5P9n/IlOfXBfkBYpsr1CZtS9Q+48m+c1j54+doc4ABOxCw+3RonMtCSJ6PrUDu1kYq5tSWlo5lQON/X/zyhA8p/9V6noWZj10/lLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca; spf=pass smtp.mailfrom=ndufresne.ca; dkim=pass (2048-bit key) header.d=ndufresne-ca.20230601.gappssmtp.com header.i=@ndufresne-ca.20230601.gappssmtp.com header.b=WlWK3jXW; arc=none smtp.client-ip=209.85.222.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ndufresne.ca
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ndufresne.ca
Received: by mail-qk1-f174.google.com with SMTP id af79cd13be357-8b2da83f721so27224985a.1
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 13:01:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ndufresne-ca.20230601.gappssmtp.com; s=20230601; t=1765314106; x=1765918906; darn=vger.kernel.org;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=bdB60+eboYB8mcQkNMp1+tLftnngs0TeTeQCleurBBU=;
        b=WlWK3jXW5/0RBDEyKSGbOEQrZcpyxsKuXRT+U2np4FiQdALLVILyUs9EJkbOV/+ihh
         yFMxZcmIU9f8zFNjedwuC7D/OHSP+MvfsYMlOzblIRBfXKSktSf8arejQd3GsIyXBLLt
         FGwYeukZO2kUfeS07t3hU22Q1PyLkt8wpRiYF3489G8yKopi8Df1JghbDSz6yBR8zrDU
         q+9wSUVMgIvBYvImPPPm29j/xQBX28Bw16oq1zGyXqnYtR1D5ARiD2MJ8GAMk0hLppgu
         3iLQL6m6Qz0DxlwO5nJijIi/uLPwU0N825i7L+Fb62AwwuIW+ptXWOlXVIkmsO4Tr9Qu
         FObQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765314106; x=1765918906;
        h=mime-version:user-agent:autocrypt:references:in-reply-to:date:cc:to
         :from:subject:message-id:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bdB60+eboYB8mcQkNMp1+tLftnngs0TeTeQCleurBBU=;
        b=OfmrxmhLc0cR+pO8xipqpEgwhOyMUraR97BqG1LlmqJxFh0i5ztXgeKP9q8J5lgF4E
         LtAJ4JIRDcvs8l/UxHSbaQq+sjLfomNUVx7rwlW6UZB1x4WAU0M+VxkkUi3CYJQG/Fx3
         fTsQ3c4S9rrqlP9N1pjv4LJXkXpDF+Lc0OE3VsxlK2/k3HktQ3c8dFBLLi6x1XDy50Lj
         APfe11UafHpYzsuf7/f4qkWP+Y+6USJuyE1HxYekL7fNQJ4T1CcOzzDmOOdE2bAV25Wq
         +B9qfAEjem9PkzwONoohJBXlFZAWb0cnAO69MwKwGwLZV2uE91+p04A6aKAdEjGMLwgY
         0H+w==
X-Forwarded-Encrypted: i=1; AJvYcCUd6svUnKml5OFR3cRM2w22mz8JBylEdVHyy4hE017u9uD/PlbmR1oXJXA3gZUVWtRjVwdRns9CUd9p@vger.kernel.org
X-Gm-Message-State: AOJu0YxPk7sDbj1MDW9jenXYSGn2XQFrxrWg5T4HNAVb3R5g8DzhUEQC
	WP0FZP9SM+ahsxEKnbWlq9sD5bs8s0JCtYgEHkVNERC6D6pLZYq7IFG8qc5ock9lc6U=
X-Gm-Gg: ASbGnct+gbzcahqZ4biPdKZqB3cdlolfhcjaYWxSF8/j5JK9ctQFOrCmrYOTaPYJh+w
	YCc6gExEiQ6miOqmYM/JRlSBoxjBlOY/df214utXD+KbZOUkczYWsAykdoCuDGhGlq+ob6GXJZt
	HTe+8e+VArouquaKbKQSd6DM8OjRubnUO52Qc5YLSuj3Koy3uE16mYbPJqsnWuAWnLCB1Z1rDgq
	7ZK/J0jP98XZJ5HHR7JwAoxIwqs7sY451ADg7jI3uj/oYdWL/jXXNdWaKJRZRNHFBjravDORDaL
	zWyxdDLUctpUFj60NVW1bDArkM/4YoSm0qO2gPQvWdiDP/6dPywQAZ08krvUR8TgV3vvPiGFH5j
	gtdsKBMvf6OecqTpSmzPGI1RYWIkLwwTzzUbEkF1Z32T9McD7EZXJqlp1zZ73uiwBGyxIycJqZp
	UjSnujE8i5o0Ws8l7R
X-Google-Smtp-Source: AGHT+IE70E6Yg8SvO7c4cluG29AN/MEVghrbdBWJ2DadPgU4cJuuz1Fy4vVBOHbqQWY07mt5r6xw3Q==
X-Received: by 2002:a05:620a:31a6:b0:891:8c16:283b with SMTP id af79cd13be357-8b9ccd08e72mr386130085a.9.1765314106344;
        Tue, 09 Dec 2025 13:01:46 -0800 (PST)
Received: from ?IPv6:2606:6d00:17:7b4b::c41? ([2606:6d00:17:7b4b::c41])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8b6252b61f1sm1375838185a.17.2025.12.09.13.01.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 13:01:45 -0800 (PST)
Message-ID: <ae08e53e055a238cde639dc9d9c7263fa296af5f.camel@ndufresne.ca>
Subject: Re: [PATCH v7 17/20] media: platform: mtk-mdp3: Use
 cmdq_pkt_jump_rel() without shift_pa
From: Nicolas Dufresne <nicolas@ndufresne.ca>
To: Jason-JH Lin <jason-jh.lin@mediatek.com>, Rob Herring <robh@kernel.org>,
  Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jassi Brar	 <jassisinghbrar@gmail.com>, Chun-Kuang
 Hu <chunkuang.hu@kernel.org>,  AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, Nancy Lin	
 <nancy.lin@mediatek.com>, Singo Chang <singo.chang@mediatek.com>, Paul-PL
 Chen	 <paul-pl.chen@mediatek.com>, Moudy Ho <moudy.ho@mediatek.com>,
 Xiandong Wang	 <xiandong.wang@mediatek.com>, Sirius Wang
 <sirius.wang@mediatek.com>, Fei Shao	 <fshao@chromium.org>, Chen-yu Tsai
 <wenst@chromium.org>, 	Project_Global_Chrome_Upstream_Group@mediatek.com,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, 	linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, 	linux-media@vger.kernel.org
Date: Tue, 09 Dec 2025 16:01:44 -0500
In-Reply-To: <20250827114006.3310175-18-jason-jh.lin@mediatek.com>
References: <20250827114006.3310175-1-jason-jh.lin@mediatek.com>
	 <20250827114006.3310175-18-jason-jh.lin@mediatek.com>
Autocrypt: addr=nicolas@ndufresne.ca; prefer-encrypt=mutual;
 keydata=mDMEaCN2ixYJKwYBBAHaRw8BAQdAM0EHepTful3JOIzcPv6ekHOenE1u0vDG1gdHFrChD
 /e0J05pY29sYXMgRHVmcmVzbmUgPG5pY29sYXNAbmR1ZnJlc25lLmNhPoicBBMWCgBEAhsDBQsJCA
 cCAiICBhUKCQgLAgQWAgMBAh4HAheABQkJZfd1FiEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrjo
 CGQEACgkQ2UGUUSlgcvQlQwD/RjpU1SZYcKG6pnfnQ8ivgtTkGDRUJ8gP3fK7+XUjRNIA/iXfhXMN
 abIWxO2oCXKf3TdD7aQ4070KO6zSxIcxgNQFtDFOaWNvbGFzIER1ZnJlc25lIDxuaWNvbGFzLmR1Z
 nJlc25lQGNvbGxhYm9yYS5jb20+iJkEExYKAEECGwMFCwkIBwICIgIGFQoJCAsCBBYCAwECHgcCF4
 AWIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaCyyxgUJCWX3dQAKCRDZQZRRKWBy9ARJAP96pFmLffZ
 smBUpkyVBfFAf+zq6BJt769R0al3kHvUKdgD9G7KAHuioxD2v6SX7idpIazjzx8b8rfzwTWyOQWHC
 AAS0LU5pY29sYXMgRHVmcmVzbmUgPG5pY29sYXMuZHVmcmVzbmVAZ21haWwuY29tPoiZBBMWCgBBF
 iEE7w1SgRXEw8IaBG8S2UGUUSlgcvQFAmibrGYCGwMFCQll93UFCwkIBwICIgIGFQoJCAsCBBYCAw
 ECHgcCF4AACgkQ2UGUUSlgcvRObgD/YnQjfi4+L8f4fI7p1pPMTwRTcaRdy6aqkKEmKsCArzQBAK8
 bRLv9QjuqsE6oQZra/RB4widZPvphs78H0P6NmpIJ
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-Pkgq2xxV7UQeyr3akCzT"
User-Agent: Evolution 3.58.2 (3.58.2-1.fc43) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0


--=-Pkgq2xxV7UQeyr3akCzT
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le mercredi 27 ao=C3=BBt 2025 =C3=A0 19:37 +0800, Jason-JH Lin a =C3=A9crit=
=C2=A0:
> With the removal of the shift_pa parameter, cmdq_pkt_jump_rel_temp()
> can be replaced by the new cmdq_pkt_jump_rel() without shift_pa.
>=20
> Then, remove the cmdq_shift_pa variable in the mdp_dev structure for
> each mbox client.
>=20
> Fixes: ade176534112 ("soc: mediatek: cmdq: Add parameter shift_pa to cmdq=
_pkt_jump()")
> Signed-off-by: Jason-JH Lin <jason-jh.lin@mediatek.com>
> ---
> =C2=A0drivers/media/platform/mediatek/mdp3/mtk-mdp3-cmdq.c | 2 +-
> =C2=A0drivers/media/platform/mediatek/mdp3/mtk-mdp3-core.c | 2 --
> =C2=A0drivers/media/platform/mediatek/mdp3/mtk-mdp3-core.h | 1 -
> =C2=A03 files changed, 1 insertion(+), 4 deletions(-)
>=20
> diff --git a/drivers/media/platform/mediatek/mdp3/mtk-mdp3-cmdq.c b/drive=
rs/media/platform/mediatek/mdp3/mtk-mdp3-cmdq.c
> index 7575ec376367..c35fe0e3a4d5 100644
> --- a/drivers/media/platform/mediatek/mdp3/mtk-mdp3-cmdq.c
> +++ b/drivers/media/platform/mediatek/mdp3/mtk-mdp3-cmdq.c
> @@ -638,7 +638,7 @@ static struct mdp_cmdq_cmd *mdp_cmdq_prepare(struct m=
dp_dev *mdp,
> =C2=A0		goto err_free_path;
> =C2=A0	}
> =C2=A0	cmdq_pkt_eoc(&cmd->pkt);
> -	cmdq_pkt_jump_rel_temp(&cmd->pkt, CMDQ_INST_SIZE, mdp->cmdq_shift_pa[pp=
_idx]);
> +	cmdq_pkt_jump_rel(&cmd->pkt, CMDQ_INST_SIZE);

That effectively revert another patch that is pending, and remove the use o=
f the
new cmdq_pkt_jump_rel_temp(). I don't follow what is doing on here, I think=
 some
context must be lost.

Nicolas

> =C2=A0
> =C2=A0	for (i =3D 0; i < num_comp; i++) {
> =C2=A0		s32 inner_id =3D MDP_COMP_NONE;
> diff --git a/drivers/media/platform/mediatek/mdp3/mtk-mdp3-core.c b/drive=
rs/media/platform/mediatek/mdp3/mtk-mdp3-core.c
> index 8de2c8e4d333..2f8147481bd6 100644
> --- a/drivers/media/platform/mediatek/mdp3/mtk-mdp3-core.c
> +++ b/drivers/media/platform/mediatek/mdp3/mtk-mdp3-core.c
> @@ -293,8 +293,6 @@ static int mdp_probe(struct platform_device *pdev)
> =C2=A0			ret =3D PTR_ERR(mdp->cmdq_clt[i]);
> =C2=A0			goto err_mbox_destroy;
> =C2=A0		}
> -
> -		mdp->cmdq_shift_pa[i] =3D cmdq_get_shift_pa(mdp->cmdq_clt[i]->chan);
> =C2=A0	}
> =C2=A0
> =C2=A0	init_waitqueue_head(&mdp->callback_wq);
> diff --git a/drivers/media/platform/mediatek/mdp3/mtk-mdp3-core.h b/drive=
rs/media/platform/mediatek/mdp3/mtk-mdp3-core.h
> index 05cade1d098e..430251f63754 100644
> --- a/drivers/media/platform/mediatek/mdp3/mtk-mdp3-core.h
> +++ b/drivers/media/platform/mediatek/mdp3/mtk-mdp3-core.h
> @@ -126,7 +126,6 @@ struct mdp_dev {
> =C2=A0	u32					id_count;
> =C2=A0	struct ida				mdp_ida;
> =C2=A0	struct cmdq_client			*cmdq_clt[MDP_PP_MAX];
> -	u8					cmdq_shift_pa[MDP_PP_MAX];
> =C2=A0	wait_queue_head_t			callback_wq;
> =C2=A0
> =C2=A0	struct v4l2_device			v4l2_dev;

--=-Pkgq2xxV7UQeyr3akCzT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTvDVKBFcTDwhoEbxLZQZRRKWBy9AUCaTiOOAAKCRDZQZRRKWBy
9OdCAP9jVzg+QpGog3Qs+E1aiutQSW6I8TrxlaZxB+Nqe/V4dQEAvcTe47Q5IdHE
la5jsdG9ICyO0vG59Lcb7msMNvmnEg4=
=ZEQI
-----END PGP SIGNATURE-----

--=-Pkgq2xxV7UQeyr3akCzT--

