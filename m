Return-Path: <devicetree+bounces-276734-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNgsAEVquWmZDwIAu9opvQ
	(envelope-from <devicetree+bounces-276734-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:50:45 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BC52AC596
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 15:50:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B4F21303872A
	for <lists+devicetree@lfdr.de>; Tue, 17 Mar 2026 14:50:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 823433E9F86;
	Tue, 17 Mar 2026 14:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="LXjn5oH/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A95763E8680
	for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 14:50:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773759014; cv=none; b=cLUBH/EENV1/MRSLplEMCASmgJJ28wsWkmtydEG4aBnhL7wjYDtKi9UFD1ixs4BWT5rCrDa+v0Za5aaIYTn3ektb6qfTKKJ8Uni5zwd4yOAHCj2IE+e5sz4ox7YBFvoG/6GZ+w2Sgq37TBa2++nO/4JOu67ll/Ej8kio3VHRljs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773759014; c=relaxed/simple;
	bh=fv4N5ZnqgMnUNaISGXM3ZCoWJDtQS/dualFJmaFPuuU=;
	h=Mime-Version:Content-Type:Date:Message-Id:To:Cc:Subject:From:
	 References:In-Reply-To; b=Jo0vFyVND4TZvFeKM3P9et+JpBWGvaG2S3xy9Nk6SMnItlG60QwAMDQHHz1pvgeGYlAMeePoHmc/iiZAcYOcCwyzYPVi4TVKMDf1EfY/D45MJNzAi9GGtCxhO00Dp5wiM4yQgiGwJE+v4f1ghnpAJQ3RA/lE89psOztNZXjrujU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=LXjn5oH/; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-b97b7e0368eso341475466b.3
        for <devicetree@vger.kernel.org>; Tue, 17 Mar 2026 07:50:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1773759010; x=1774363810; darn=vger.kernel.org;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TvLCj8O+Yxg0F9nK1kMfsPFMXTAA+Wcc2r9kgyX0HS0=;
        b=LXjn5oH/q83u9zvRBc19fJGNHgLfDuB1gfVfsnHkpximCYbF1NbbDCzk0ZVXQIury+
         bXXBp/otTNZPqUeiV1dRUZRTXgzDVZslpN8D35lNOdBSW5SR5zOhqSgrllobjDlzIbxQ
         Tgjm8Wf9Csc/DGlu731InOVjVbCZTH6tB3ntrzj3qGI6XWYYI63AoRH/BtnCeAscGE4u
         fbJdAAHgaqoFFmZnfiLSUWO0sgTHOZpXHq7SJSqC5GCEhOgnBTvSNMKhPkLtylvSZewE
         gabmMp++47HegPHBsAvBEXOLX95eh3SGA50dmeBZUi42QhK1Q1DgDvUy12PdVKIz9ke8
         0bww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773759010; x=1774363810;
        h=in-reply-to:references:from:subject:cc:to:message-id:date
         :content-transfer-encoding:mime-version:x-gm-gg:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TvLCj8O+Yxg0F9nK1kMfsPFMXTAA+Wcc2r9kgyX0HS0=;
        b=WWYRhXB0Uwh/QLh1hfTYKZYiFAD2QLCRUSaxteStIy44/ysmIcX1rXbAVR2StePl3a
         BuDvaOLw5vahmbg8Gqn/TX5M5pn1kGWneYoHzI+L9C5B77D03iF4SMWEKTIFiEau2sgJ
         HdUvepx7F6lXmCE2cSUJEYtMHdPbsg58JTT4Ku8vD6CTFCfaQWuue/mCk8fA4SfpwJty
         sk9Lt/vZ+TGNRpXX8UrfH//wfh/8qkLguE0SG36VhKf6kv31uX/IhOKDouC9Wfwt0enf
         q8iJ/byRazVe1SMuXnRfv31Dtnotm+z8O6Un1+ZANp35dqWBD5rok5W47gtK11X59Yxe
         U0iQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRYCrJsBmDFSGi8pst4geQ7uCwVT8roazVsBdWb9q9DuhtT2hR8C625tQ/SfEBAOfjXq6/Z2R3qh65@vger.kernel.org
X-Gm-Message-State: AOJu0YwlhGah/L2deZFq/H074x638X048xzdyz8nubigmIHSr8RVc1JS
	8X8ATcF9D+abIaYJCxtYD0QXDAgPqVat78WQm8ZncqGge8FTmVTGqnbaC03M+wrsVho=
X-Gm-Gg: ATEYQzz+8MqvsdrNuKRRw1KucxUp7SBcSZ1SJsxGEAiQlAA2aSO31Phafsdw2u+3NPX
	254zNwxX/lQPgPFZnz808fa/hJ8nVajseVnrvF1m9qugnE+L9aA6FFZFGusWpf7wn0yfilLYWoK
	mUjP19X0ws7dKZuS97FnzThzzSrAD87E91YUsZkMG7jQ9bnziNa0BYeyjdCb5fIkMRzOUni5t+a
	9ab++696kMCVXGgepj3uBex3uExZNaG0LqltQS9Pkpq0bkPDM/LCoFTkgWItvd4AWXdn9wMCAdw
	5/wMsv9iIBdM8LUm0s7xjkFIXOOS7hTSdHd/oBElFfeuIYXvA1FzhLmMoZLC3raFiTm6jLYFWU/
	bra/Z1hzHmUtfVLXfuD0ZUGrUeA2tF7j4RtXrDivZjZaHH1VELK8EhREcclyi6IVv6D0vg2pvfq
	KDt4xfQgruaypW8kp20zL35LW54RrhYvGTA2EZXuld+pl4qKlngSXNvMLdbKmGXRjXMyrg
X-Received: by 2002:a17:906:7953:b0:b97:73ae:e1f with SMTP id a640c23a62f3a-b9773ae1114mr1036316166b.34.1773759009888;
        Tue, 17 Mar 2026 07:50:09 -0700 (PDT)
Received: from localhost (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-667ac611b88sm59632a12.0.2026.03.17.07.50.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2026 07:50:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date: Tue, 17 Mar 2026 15:50:07 +0100
Message-Id: <DH553B1YAFG5.1UT90QXHUSGM1@fairphone.com>
To: "Konrad Dybcio" <konradybcio@kernel.org>, "Bjorn Andersson"
 <andersson@kernel.org>, "Rob Herring" <robh@kernel.org>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>,
 "Tengfei Fan" <tengfei.fan@oss.qualcomm.com>, "Dmitry Baryshkov"
 <dmitry.baryshkov@oss.qualcomm.com>, "Jingyi Wang"
 <jingyi.wang@oss.qualcomm.com>, "Luca Weiss" <luca.weiss@fairphone.com>,
 "Vinod Koul" <vkoul@kernel.org>, "Dmitry Baryshkov" <lumag@kernel.org>,
 "Sai Prakash Ranjan" <quic_saipraka@quicinc.com>, "Neil Armstrong"
 <neil.armstrong@linaro.org>, "Abel Vesa" <abelvesa@kernel.org>, "Raviteja
 Laggyshetty" <quic_rlaggysh@quicinc.com>, "Melody Olvera"
 <quic_molvera@quicinc.com>, "Taniya Das" <quic_tdas@quicinc.com>
Cc: <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, "Jishnu Prakash"
 <quic_jprakash@quicinc.com>, "Konrad Dybcio"
 <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 2/6] arm64: dts: qcom: milos: Fix GIC_ITS range length
From: "Luca Weiss" <luca.weiss@fairphone.com>
X-Mailer: aerc 0.21.0-0-g5549850facc2
References: <20260317-topic-its_range_fixup-v1-0-49be8076adb1@oss.qualcomm.com> <20260317-topic-its_range_fixup-v1-2-49be8076adb1@oss.qualcomm.com>
In-Reply-To: <20260317-topic-its_range_fixup-v1-2-49be8076adb1@oss.qualcomm.com>
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[fairphone.com,quarantine];
	MV_CASE(0.50)[];
	R_DKIM_ALLOW(-0.20)[fairphone.com:s=fair];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[22];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[bounces-276734-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[fairphone.com:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[luca.weiss@fairphone.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[1.5.137.32:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,qualcomm.com:email]
X-Rspamd-Queue-Id: D1BC52AC596
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tue Mar 17, 2026 at 3:41 PM CET, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>
> Currently, the GITS_SGIR register is cut off. Fix it up.
>
> Fixes: d9d59d105f98 ("arm64: dts: qcom: Add initial Milos dtsi")
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/milos.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/milos.dtsi b/arch/arm64/boot/dts/qc=
om/milos.dtsi
> index e1a51d43943f..084be5316e0d 100644
> --- a/arch/arm64/boot/dts/qcom/milos.dtsi
> +++ b/arch/arm64/boot/dts/qcom/milos.dtsi
> @@ -1911,7 +1911,7 @@ ppi_cluster1: interrupt-partition-1 {
> =20
>  			gic_its: msi-controller@17140000 {
>  				compatible =3D "arm,gic-v3-its";
> -				reg =3D <0x0 0x17140000 0x0 0x20000>;
> +				reg =3D <0x0 0x17140000 0x0 0x40000>;

The .FLAT doesn't make it super obvious what the size should be, but
yes, GITS0_SGIR would be outside the range with 0x20000, and 0x40000
looks sane given at 0x1718_0000 the next register after GITS0_SGIR is
located.

Reviewed-by: Luca Weiss <luca.weiss@fairphone.com>


> =20
>  				msi-controller;
>  				#msi-cells =3D <1>;


