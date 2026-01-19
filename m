Return-Path: <devicetree+bounces-256638-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E787ED39D6C
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 05:12:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E425330078A9
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 04:12:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0BBD32F766;
	Mon, 19 Jan 2026 04:12:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bUDVxL/h";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="g9bXe3Xf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B0F2D5932
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 04:12:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.180.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768795937; cv=pass; b=ncGyNve427QX6f3245JwKnMB6+D1WckdCzMjF00Gr2aGjkq63kptEfC1P/HAeDlAdFaIxcnl71IfpBV59P8Xbi92IcwuTRspbjBJurlKc6WfnzO5v1J9p7gmSsFDIgdaO1ot+wDs560a6+mpCkMbXI0Rlj5zdV4//Lzb+9Uk6mQ=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768795937; c=relaxed/simple;
	bh=LC5ldM7Pp7O2NQNIduQOdZIIWMw96vpR+TP8tSA1Uvc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dGMTtwC0yAAMB8odFDlGEsT2N0wE9+A1NuNWlwAf+FjJLtVv/mHw25EMUQDrpOoydMxWebTV/vD3qFfbSfCtJyhGJ2zWKFbMOw7ochjGf+UQ0cogR2456WCcGrJkiltTJHyjafKC3et09Ot/w0VWbo+Oi4AhJoopS+rgSvbWjhI=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bUDVxL/h; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=g9bXe3Xf; arc=pass smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60ILDNWx3151825
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 04:12:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fSLP4RuctikhYrzYVyzS+NfVa/9EWKcdFmTCTAmuic0=; b=bUDVxL/hJhe6aWD8
	06Da4M1fU6zdQsVJe0rYbPQemxmr9NW3fQzy/ZvUeV6yDdYeOoJwrgEjWfVWvlLJ
	D1Sa0XWWZE2M53QSQJmApLrUV5mdrwrhWdzmBa8Cnja+KXzdAqm+ubKE6gAKVkrR
	7b1j26R0QjWRnabkbE2AZaBZKVLgVH9B7eYgveceYpx1yhOC7lhvd7apYxLg951H
	kVr3bXgMRn2xD6QzL4MHuxlKbSdNzHTEUwuCeyAKVdqQZI+jqJduRXLjM0x/cp47
	rF+n4snt1wTVuOq7n9s5luqc41I9sBTl2473BPap0/b4RaLyyaHJbKK2bKM8jrAY
	P085zg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bs7880kw1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 04:12:15 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88a3356a310so87746766d6.3
        for <devicetree@vger.kernel.org>; Sun, 18 Jan 2026 20:12:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1768795934; cv=none;
        d=google.com; s=arc-20240605;
        b=db7YtwhvF5k67jJooDurGyWIk83NJelVgBAztPrEOW+FZsRLyPqrGiP0KwdIPCslet
         NGpUAZuJR8iW5xKPC/c2Q/FiRvmcjlCbdJ/w2KvWVGI8QhPct/ypICsSu0tV3m//4/2b
         4aQp7773aNOfeiPEzlXZ+EYH/t8+FYjRr097UlX7bgruO++KRel+6dyQy0ZtcKrMyoIW
         EZNAM/bexh+WJoK7dQhqUwVRIbOMqdlw2DkwUit7k0Y59c77H3np5YA/L+4AwgzVs9OA
         HZ7ncpA9XXOBpKAshhtZ+Ao609uwbnc1sbBiPfM+zo/kiXfX9DZkDFxi5v7PJwNEgNSz
         /neA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=fSLP4RuctikhYrzYVyzS+NfVa/9EWKcdFmTCTAmuic0=;
        fh=yXjcxx/xITtzrOJIshVm9lydVuzus10nSRiNjDQpRIQ=;
        b=LTLGfb1z9wdHa520++nMhS+C5h1SVPhLeTPHcKw+RQ7eDZ1GL0lSGZ+8dgUnmY4gIm
         ep0MbUf4Uj/XEuUS/+VBqTRwk+6Yddlq10SbrxPGuc9Y0wbI7OQSNX/vLGxXD1Phx2z1
         KSRtBfUuUj9y5CpeKjmyVtrlp4PQBf4MSI8vxdwVoEmm+bJ5nePpBE+4NHPL1UQg0e8K
         FtfwDXUNEKX9tz4c1V2pKCFVNWaoQ5EezZ2jhQsUhkKx3CUqrQIWGFSDyf39Wd1U/0O7
         KWoBFfEanZvtlM68pGcZy2mTAdlUMXkmw+HFVoQtMFgioYa0ArNSAA50Spq+ay5MH/BS
         fWcA==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768795934; x=1769400734; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fSLP4RuctikhYrzYVyzS+NfVa/9EWKcdFmTCTAmuic0=;
        b=g9bXe3XfkuDocl1ZcBXEYqEftEJ2Hvz3hkklr1sgYYmfRynYszy2TpOrSXWAokgbey
         2IDtMqcCDXgruAoOy+h1TCt5fzxcoLbgy846SE0YnTJ6hnItSTnomoo2rDFK/wS0fOFr
         DrI3jbUqj4wb98GfILGxHlRE0eJGDNRBezvQdSvssTgW41u9ciK5gkXLRVh3AYetRiql
         ZS8ETy5F9H569g1eQO0QowxCZ0+EDpf5AelA5f52mrfjHpy3vueuY09f3GQuAErcnkpq
         1sOV3YEPwL7yBEz0lB3bIJePCAsUfxuC9cjXQZfvoN3Pbjmvo7I0GX8nmlwfdMcTSrrA
         IelA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768795934; x=1769400734;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=fSLP4RuctikhYrzYVyzS+NfVa/9EWKcdFmTCTAmuic0=;
        b=V87xcupG9h+DZ59IRBTJ2vDtfiDRLdoBMpRuKUjay1sID80o/AiKZuUKK/ws49uQ/o
         WrfXvFgdmIEAJX7G/go3UIc2VIspi6zZO1+nGpLZ/D6kYLWXZ1S862tk9mm6ZTm1L7rx
         LNS3dYt+LbRTStZcE64fWrpc3oPImdEj3jqVoGPrxDtBN+FwYp+BMHzgLJmmBbHOP4J1
         /FsxtlyodWPbIk+8UcGO6WklgnhaMKwmDv4ZSJ4tGP0DgAK35ou7SEIXX17QSspsSBcj
         L4nl9nNqZoIiBlxkMh9yK1umDTnf0zLb9nVBZYoFBG9G42xJtVxXCdYR1K6xWnod304u
         ESmg==
X-Forwarded-Encrypted: i=1; AJvYcCWxiJnJzHjMxYL9fZjkuVxkYfJVfknVRRVuaC2xS5gW8BilotSBl98HfXqB6JZgZUzm0QOg3yIkbRYf@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5u8YDVR33OYA+1lIAWvOdX9aaTAVErAAHCPpiawjutLxeaOKu
	8Q0jYNmjFtCEgptT1SGrN8tXYYQ7djfMRX96LwwbQLpHQnvU1DGgDTZWxcfxeueNicaEc4MkD/i
	XjanNLuJtXuyduTxvfAjHpq3jYXlc46hCMb9nwpsTSXc6v0yF7qHi83QWXfgsPb0QdybZtIqoIh
	VsCQin+yge6nA+tH4EojbKjWQatGZbQh5Ary/iUYs=
X-Gm-Gg: AY/fxX4SpYYVs6d07lnA6I4eyM1R2DvwuEvu5U3iA/CV8Onx7qeHPvP6yTUZgX+wHLX
	TOEWb9IjBKPzfJSnycHc69XI9cqrTARbyoKhNLnzIVXKoFCnvBkE1DDC3hd+bkVljKWd/5VqBI+
	bbdhrkpH3qtwHs9gIWHOilIwT+X+OByqvhZlo3K4FzczvVk5ghg3O0QLwjEyAgKBO/u+4=
X-Received: by 2002:ad4:5bef:0:b0:888:4938:49e6 with SMTP id 6a1803df08f44-8942ddc1868mr166168796d6.70.1768795934499;
        Sun, 18 Jan 2026 20:12:14 -0800 (PST)
X-Received: by 2002:ad4:5bef:0:b0:888:4938:49e6 with SMTP id
 6a1803df08f44-8942ddc1868mr166168636d6.70.1768795934060; Sun, 18 Jan 2026
 20:12:14 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251220063537.3639535-1-swati.agarwal@oss.qualcomm.com>
 <20251220063537.3639535-5-swati.agarwal@oss.qualcomm.com> <qy4bp2hz3ivwydsk4sblxpgthz5hw4rn7r3ezaim5wf5fgm4sg@meispnp6wthj>
 <CAHz4bYvVfQke_aUx_mVO2QkCc5yr_1Cn35N6hPi1if=X7iM3+g@mail.gmail.com>
 <ftqb2uxp6yk73djyo3psehhqq5wamimtissgfehhziwbkprl4c@phftum3m3sdy>
 <CAHz4bYtYMZQSdw4XKSB06fT2MzZHu=AgdXGrZ73XVXi1sMwyyw@mail.gmail.com> <zkvwy56jkya6eogwqlmbhoo64zlzatxsdtkhy4hqfudoqtfbkg@fwiy46l3c337>
In-Reply-To: <zkvwy56jkya6eogwqlmbhoo64zlzatxsdtkhy4hqfudoqtfbkg@fwiy46l3c337>
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 09:42:03 +0530
X-Gm-Features: AZwV_Qhmg9tHGp52VrTvw7vw7uA1PDc2XX4NC6WqoGa6QZ-b3fjgVIR8u0EvQLM
Message-ID: <CAHz4bYuE6LS=+3272x2qat7EyjgVuODC7Otz_f4zP78ZQ=BWDA@mail.gmail.com>
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: lemans-evk: Enable secondary USB
 controller in host mode
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        =?UTF-8?B?SiAuIE5ldXNjaMOkZmVy?= <j.ne@posteo.net>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Pin-yen Lin <treapking@chromium.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=KLVXzVFo c=1 sm=1 tr=0 ts=696daf1f cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=G1Sdl2PVBONlc36WVvQA:9 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDAzMiBTYWx0ZWRfXzkb3mAFqQPb5
 blsgFVu4qkySv2qCpGGMf/DFBZiWUtv7lMZHzdjHQBrttqBGu+FREKORRzk4W1Jm23KOLGQ+dhq
 lh9rIS8btZLCqbQneNC/Pbbl58IrPZsCHc2mexKbUOcpkCWPmZqIgQ2bYzvTpqa/A2EB/8bL0ug
 eE/i+Dq+0qCS39nS02ICS+bNAQVqbZiuUuHjOK/e2+PQeycxgpqjVTUxzjv2xafeaQLoZxoIjyq
 HK38G7hYmKUctU1r4KXI2Ix686RZwrTwh+12f7KP4qf+4HARWLKQRfh54Rx1ZMQKyBq3m4NwduE
 EkwMmRY1mRET8D24U21wryUohNBSpEM4vesq1DhlYBWPjQnmrPGvx/QzPcDz/LI82CSuBNoCXaH
 BCSU2fhvB9GBKWfFZSvlq0zEouiOxPpeFQe1RPiCEX61jC6XtH7yhUZxG6S8zCOSBSLtVx5grHE
 /dD50mgargtvXVjUCgA==
X-Proofpoint-GUID: _-9KbZ4krNQPjHfzlGJpeEcV3KPjoI6s
X-Proofpoint-ORIG-GUID: _-9KbZ4krNQPjHfzlGJpeEcV3KPjoI6s
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-17_03,2026-01-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 suspectscore=0 lowpriorityscore=0 spamscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190032

On Wed, Jan 14, 2026 at 11:39=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> On Wed, Jan 14, 2026 at 11:10:26AM +0530, Swati Agarwal wrote:
> > On Tue, Jan 13, 2026 at 4:59=E2=80=AFPM Dmitry Baryshkov
> > <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > >
> > > On Tue, Jan 13, 2026 at 01:32:41PM +0530, Swati Agarwal wrote:
> > > > On Sat, Dec 20, 2025 at 9:47=E2=80=AFPM Dmitry Baryshkov
> > > > <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > > > >
> > > > > On Sat, Dec 20, 2025 at 12:05:37PM +0530, Swati Agarwal wrote:
> > > > > > Enable secondary USB controller in host mode on lemans EVK Plat=
form.
> > > > > >
> > > > > > For secondary USB Typec port, there is a genesys USB HUB GL3590=
 having 4
> > > > > > ports sitting in between SOC and HD3SS3220 Type-C port controll=
er and SS
> > > > > > lines run from the SoC through the hub to the Port controller. =
Mark the
> > > > > > second USB controller as host only capable.
> > > > > >
> > > > > > Add HD3SS3220 Type-C port controller along with Type-c connecto=
r for
> > > > > > controlling vbus supply.
> > > > > >
> > > > > > Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> > > > > > ---
> > > > > >  arch/arm64/boot/dts/qcom/lemans-evk.dts | 158 ++++++++++++++++=
++++++++
> > > > > >  1 file changed, 158 insertions(+)
> > > > > >
> > > > > > diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm=
64/boot/dts/qcom/lemans-evk.dts
> > > > > > index 70d85b6ba772..d72639479d75 100644
> > > > > > --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > > > > > +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > > > > > @@ -67,6 +67,47 @@ usb0_con_ss_ep: endpoint {
> > > > > >               };
> > > > > >       };
> > > > > >
> > > > > > +     connector-1 {
> > > > > > +             compatible =3D "usb-c-connector";
> > > > > > +             label =3D "USB1-Type-C";
> > > > > > +             data-role =3D "host";
> > > > > > +             power-role =3D "dual";
> > > > > > +             try-power-role =3D "source";
> > > > > > +
> > > > > > +             vbus-supply =3D <&vbus_supply_regulator_1>;
> > > > > > +
> > > > > > +             ports {
> > > > > > +                     #address-cells =3D <1>;
> > > > > > +                     #size-cells =3D <0>;
> > > > > > +
> > > > > > +                     port@0 {
> > > > > > +                             reg =3D <0>;
> > > > > > +
> > > > > > +                             usb1_con_ss_ep: endpoint {
> > > > > > +                                     remote-endpoint =3D <&hd3=
ss3220_1_in_ep>;
> > > > > > +                             };
> > > > > > +                     };
> > > > > > +
> > > > > > +                     port@1 {
> > > > > > +                             reg =3D <1>;
> > > > > > +
> > > > > > +                             usb1_hs_in: endpoint {
> > > > > > +                                     remote-endpoint =3D <&usb=
_hub_2_1>;
> > > > > > +                             };
> > > > > > +
> > > > > > +                     };
> > > > > > +
> > > > > > +                     port@2 {
> > > > > > +                             reg =3D <2>;
> > > > > > +
> > > > > > +                             usb1_ss_in: endpoint {
> > > > > > +                                     remote-endpoint =3D <&usb=
_hub_3_1>;
> > > > > > +                             };
> > > > > > +
> > > > > > +                     };
> > > > > > +             };
> > > > > > +     };
> > > > > > +
> > > > > >       edp0-connector {
> > > > > >               compatible =3D "dp-connector";
> > > > > >               label =3D "EDP0";
> > > > > > @@ -140,6 +181,16 @@ vbus_supply_regulator_0: regulator-vbus-su=
pply-0 {
> > > > > >               enable-active-high;
> > > > > >       };
> > > > > >
> > > > > > +     vbus_supply_regulator_1: regulator-vbus-supply-1 {
> > > > > > +             compatible =3D "regulator-fixed";
> > > > > > +             regulator-name =3D "vbus_supply_1";
> > > > > > +             gpio =3D <&expander1 3 GPIO_ACTIVE_HIGH>;
> > > > > > +             regulator-min-microvolt =3D <5000000>;
> > > > > > +             regulator-max-microvolt =3D <5000000>;
> > > > > > +             regulator-boot-on;
> > > > > > +             enable-active-high;
> > > > > > +     };
> > > > > > +
> > > > > >       vmmc_sdc: regulator-vmmc-sdc {
> > > > > >               compatible =3D "regulator-fixed";
> > > > > >
> > > > > > @@ -527,6 +578,33 @@ hd3ss3220_0_out_ep: endpoint {
> > > > > >                       };
> > > > > >               };
> > > > > >       };
> > > > > > +
> > > > > > +     usb-typec@47 {
> > > > > > +             compatible =3D "ti,hd3ss3220";
> > > > > > +             reg =3D <0x47>;
> > > > > > +
> > > > > > +             interrupts-extended =3D <&pmm8654au_2_gpios 6 IRQ=
_TYPE_EDGE_FALLING>;
> > > > > > +
> > > > > > +             id-gpios =3D <&tlmm 51 GPIO_ACTIVE_HIGH>;
> > > > > > +
> > > > > > +             pinctrl-0 =3D <&usb1_id>, <&usb1_intr>;
> > > > > > +             pinctrl-names =3D "default";
> > > > > > +
> > > > > > +             ports {
> > > > > > +                     #address-cells =3D <1>;
> > > > > > +                     #size-cells =3D <0>;
> > > > > > +
> > > > > > +                     port@0 {
> > > > > > +                             reg =3D <0>;
> > > > > > +
> > > > > > +                             hd3ss3220_1_in_ep: endpoint {
> > > > > > +                                     remote-endpoint =3D <&usb=
1_con_ss_ep>;
> > > > > > +                             };
> > > > > > +                     };
> > > > > > +
> > > > > > +             };
> > > > > > +     };
> > > > > > +
> > > > > >  };
> > > > > >
> > > > > >  &i2c18 {
> > > > > > @@ -690,6 +768,14 @@ usb0_intr_state: usb0-intr-state {
> > > > > >               bias-pull-up;
> > > > > >               power-source =3D <0>;
> > > > > >       };
> > > > > > +
> > > > > > +     usb1_intr: usb1-intr-state {
> > > > > > +             pins =3D "gpio6";
> > > > > > +             function =3D "normal";
> > > > > > +             input-enable;
> > > > > > +             bias-pull-up;
> > > > > > +             power-source =3D <0>;
> > > > > > +     };
> > > > > >  };
> > > > > >
> > > > > >  &qup_i2c19_default {
> > > > > > @@ -849,6 +935,12 @@ usb_id: usb-id-state {
> > > > > >               function =3D "gpio";
> > > > > >               bias-pull-up;
> > > > > >       };
> > > > > > +
> > > > > > +     usb1_id: usb1-id-state {
> > > > > > +             pins =3D "gpio51";
> > > > > > +             function =3D "gpio";
> > > > > > +             bias-pull-up;
> > > > > > +     };
> > > > > >  };
> > > > > >
> > > > > >  &uart10 {
> > > > > > @@ -903,6 +995,72 @@ &usb_0_qmpphy {
> > > > > >       status =3D "okay";
> > > > > >  };
> > > > > >
> > > > > > +&usb_1 {
> > > > > > +     dr_mode =3D "host";
> > > > > > +
> > > > > > +     #address-cells =3D <1>;
> > > > > > +     #size-cells =3D <0>;
> > > > > > +
> > > > > > +     status =3D "okay";
> > > > > > +
> > > > > > +     usb_hub_2_x: hub@1 {
> > > > > > +             compatible =3D "usb5e3,610";
> > > > > > +             reg =3D <1>;
> > > > > > +             peer-hub =3D <&usb_hub_3_x>;
> > > > > > +             #address-cells =3D <1>;
> > > > > > +             #size-cells =3D <0>;
> > > > > > +
> > > > > > +             ports {
> > > > > > +                     #address-cells =3D <1>;
> > > > > > +                     #size-cells =3D <0>;
> > > > > > +
> > > > > > +                     port@1 {
> > > > > > +                             reg =3D <1>;
> > > > > > +
> > > > > > +                             usb_hub_2_1: endpoint {
> > > > > > +                                     remote-endpoint =3D <&usb=
1_hs_in>;
> > > > > > +                             };
> > > > >
> > > > > Are all other ports disconnected? If so, why do we need a hub?
> > > > Hi Dmitry,
> > > > I didn't understand your query, can you give more context to it?
> > >
> > > You have described one port of the hub. How are other ports routed? A=
re
> > > they connected to outer ports? To some other devices? Unconnected?
> > Hi Dmitry,
> > I would like to put it this way, USB HUB has 4 ports but only one port
> > of the hub is used between SOC and Type-C controller.
> > Remaining 3 ports are used by other devices.
>
> Which devices?
Hi Dmitry,

For Lemans EVK standalone corekit board, there are 4 ports as follows:-

1) p1 is connected to type c port controller.
2) p4 is used for the m.2 E key (NFA765 Bluetooth) on corekit. This
isn't used on a standard core kit, only if we optionally replace the
wifi card with the NFA765 which uses USB for BT. standard kits all use
UART for BT.

Remaining 2 ports will become functional when the interface plus
mezzanine is stacked on top of corekit.

3) p2 is connected to another hub which is present on the mezz through
which 4 type-A ports are connected.
4) p3 is used for the m.2 B key for a 5G card when the mezz is connected.


Regards,
Swati

