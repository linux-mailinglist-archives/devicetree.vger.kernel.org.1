Return-Path: <devicetree+bounces-264559-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oN37CLvMi2n7bAAAu9opvQ
	(envelope-from <devicetree+bounces-264559-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 01:26:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C293E1204D8
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 01:26:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 966C130D7796
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 00:23:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0BEF1F1518;
	Wed, 11 Feb 2026 00:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="erP+U9yR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SPiXHlpG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 149C71E5714
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 00:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.168.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770769416; cv=pass; b=FcKn7uvxsw+uSFm4FsGD59tTYoSQPhIRB1bhE7OhKSQt2TogJXQ9d2O24FetWenhNaxY2BPHAeoRbxbukXJ4c+sOo6utFuWtJoVYjk21AkP15ojArGsd9lnk8yphMVP2m7Ug8xQYQppxmtivv28ViRW7uBvsl6zEhCCwfj6h1i8=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770769416; c=relaxed/simple;
	bh=iuqhPPcP9KDK9qs3rm+nQ6Pf5SifV6xuYKVLeRs96kc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GZH7FeVPmoFwefLRUeM/BmhZBbR+Zp/BdSq+vCZvf8oTeNWyQ/Ncx6F5f0GFckvlPiewVeSyXj1/O1mVAe4BlGVcjvPp40E4omFSWR+bTkQV7Jpvznihs8lr76dcyT5Kftj4AIQ3SZBGOFFUOUuiV7fCADdmo61RnHagLORvfkw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=erP+U9yR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SPiXHlpG; arc=pass smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61AFOfSU4177320
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 00:23:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	N+EmRhlUxNtuCeVNZgxrbRyVbxQrOfRm4J06Nqx8MEs=; b=erP+U9yR8/4XBsZo
	x+RhdvVYBnyebqpzKdwX1qLygHB3P/VPiT+9uqujDcXWNuOssVkAIh7e1uTcsiy8
	HrQ2Oyd5Bavt4eUFgaSjcE4gE3PaDh87LF2UqpcrEq5M0cdzO7ZYSonUyhcgow0N
	QGEobeRU2fXFG8PdmwSM7qdD8n0xk697ZO9QHMmMg9boc/5MEacrxXZZjJ99Wi9Q
	IgaTCMxOlWA8dz/ZzFm15daR2fp0CWe2dmmY/WTpaB0sOiP6DCKPvPpFbMbzbaKo
	wxN+7VWB3ti3zZBti3sNqFpXO7Y8jB1m+agb6KoswjcC/pQzZSBQPzDpRSQ2fj/H
	nqOMZw==
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com [209.85.128.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c879mhq4y-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 00:23:34 +0000 (GMT)
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-7963daba159so23028847b3.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 16:23:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770769413; cv=none;
        d=google.com; s=arc-20240605;
        b=Ev25h23DwoC7VQPjVngvdLkUXyPDuYtRl7ZaIXztHXvjvi6euyqGWueoyaXANtynGt
         yMd4wJbmp/Dzb2560ldTIlP3foIMC7ijPDLolxw0uYeCSYXX0cpD/R3jlEE+ME1gEzEm
         LvVA7rINAnQ5ohlRb4/rryeEHmlcFfO6V/VIx1ChtLgFgSZIkXOpv18N6K/FIJAdLyTV
         0+vjjlktSpHApW0hpXU4tlE3xk+9Chng5DxMLVPlhJ+eY0hub0x0ApubX/1XDcJVdbXq
         xrq94XaJkpHRuwj7IU81nzfNVUQgnEFchjKTYTEA+ULx0Hs7KEPk8Z1LfV5tJ6E1ajuH
         upgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=N+EmRhlUxNtuCeVNZgxrbRyVbxQrOfRm4J06Nqx8MEs=;
        fh=NYO80cp2IkUjSdyA2U9RMgIpuoTFJcmfW/+5n1iGBSA=;
        b=BAV0ZlaIJXa7/XyCt+6+lse19XGfw1AmBWBYlAanNF0/NmqnGFUdT8zZSFwIv0cddx
         cSXDqrGZs1XWKtR1noK7rhchgPw2i51vVyvzOt+vdhet+jXA28gWIe4B8QxdSmEgK1NA
         fRBHkazYJyRsAW035/cNFY6bgn70/e2r6BX8LQzEz5SjjyiPXUy7exwsW1s44gH699wS
         TBPmkRvhjtjCF6K9U3pAV/XC9f94/iCEzQnWkCDLMD+FTzv/IPNkQ1YoTh5l+n/w3sKH
         UK5iFaROguReKgHZPn8mTPWtDSfXiWVABGJTPgq+SNShoY2D42H0b32bEOu3ALu1Tg4d
         Tkvw==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770769413; x=1771374213; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N+EmRhlUxNtuCeVNZgxrbRyVbxQrOfRm4J06Nqx8MEs=;
        b=SPiXHlpGe1mfVckBVvxviC18SNmqeq3MIkWATQ7lbCPhLzcASu6tr4O44VP+IFS202
         mG6JD8OMH1LFk3pB23+b8hiYDzc8O57nPU2MmPJMKu25UKCpgBX+mTUPt24LshWwpmYS
         XyT3C04RathybdH2IqSZgQT5OC/ioybMB0yAuWQzTHgNyw/PCaxLLIgwT0m9EOquqKu8
         CYUgWNIJkMDN3DepaFk9ofIz46uHbT5o7FrfZ7ZpuohR8jHiA3VKPXDeT7AGmShBPK3J
         CjoFkIuDaJM3mN1FCtfG9EsDWH/6eNcmZdSSV0d50wU99jOXHY22bSblj15XYYwwM/Ku
         Pevw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770769413; x=1771374213;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=N+EmRhlUxNtuCeVNZgxrbRyVbxQrOfRm4J06Nqx8MEs=;
        b=AYn26acfAvAyknpAC5P5FOg+8PiVnFQbUbrgDDa7w816lrd0AdSYQpadq1oe7aGNv3
         YmwGB8gKDNofkLYquaaBgZ4a/hSQj4dsHh3y68lUZPXu3r3333CLvunbo1SMOGOIH6jw
         XaV0tlEi+pq1waZjkC1Uzt1HMGWX21ROdT0lv41/IrOEKor0quXTBYLRSjkSnS4++ZFo
         12hnfH/lbJYVkTh2AcaPUQZzGrvM4GE5dHNdwWbiLAfSfOkWlA7CO7stzJQGDGr5oB58
         l5wzX8NSg1rhrpAk3Fd/ZnMgcXwl1w06zCo+V70g85k8Zi9KQzAa+qXWj10kDpf4dPFJ
         ndFg==
X-Forwarded-Encrypted: i=1; AJvYcCWuXPBGjNKjn9kaeOE3pevYWL7B6W6TVa8Ew4d/OFL17gMRVtPM2b9wXM6vwkdTHfjvnGqr8lIMOje3@vger.kernel.org
X-Gm-Message-State: AOJu0YxdEOwHw8Ytf41YdY9YdsZ8LDD621qeJb6J/u1LLScoS4Yu1Ot7
	Dlzr1afxxV+3KYpg3wLGBBq7xNGQL+AS/BPnWoYeSzh/W2w1OdV7n7t8tbPQzilK0ZAf68AqZNf
	RqyGDmiAcquVv1A7vuJ5GqoWmkrwGReEc5oVCftavvWk6AaMlVlTE9+wYcjWVX5dZHOmM17iYPN
	WzU1gfslodVqIEtGWUhytvOy6Qz8UYZECich/m7Zk=
X-Gm-Gg: AZuq6aLeOEHk7jYpsMOyntQuvAYEDGrb3xyYSzQzu1dGbIYEgdvjS8NJY92TqS/F816
	wPMFAUmVmp5R6ItnUf4uBvS58GSc73ww0+v2tNQVXz9bVNnFmm4rPcNt4hxJz+hqjyS0W3e6h1N
	8VJiLsZoQrtM7Tsp8jp3wQWgG8/5RKRXX0GcLz11jax2oGxN+i8kt1ydWe4iWdJd/HZeKtmYOg1
	GRRZ1E=
X-Received: by 2002:a05:690c:85:b0:794:cffd:39db with SMTP id 00721157ae682-7952ab57ba7mr336166817b3.51.1770769413438;
        Tue, 10 Feb 2026 16:23:33 -0800 (PST)
X-Received: by 2002:a05:690c:85:b0:794:cffd:39db with SMTP id
 00721157ae682-7952ab57ba7mr336166457b3.51.1770769413009; Tue, 10 Feb 2026
 16:23:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260206104642.1038381-1-swati.agarwal@oss.qualcomm.com>
 <20260206104642.1038381-3-swati.agarwal@oss.qualcomm.com> <helfsilh2qi56laxsounbxlp5zn5yq3eqkrodgsgtzxevwokqz@usepksge5gz3>
 <CAHz4bYsqkJfdeMD41gNf11suJBj+4zhoy==mWdEqtZ-B2S_6Lw@mail.gmail.com> <b2cbejqrxttssho6j5d62u7mhkc5mn7vybfqlhbs2oeca3oq27@w6ws3ogfuwsg>
In-Reply-To: <b2cbejqrxttssho6j5d62u7mhkc5mn7vybfqlhbs2oeca3oq27@w6ws3ogfuwsg>
From: Krishna Kurapati PSSNV <krishna.kurapati@oss.qualcomm.com>
Date: Wed, 11 Feb 2026 05:53:19 +0530
X-Gm-Features: AZwV_QglGqm4VOnEgAfQuF97JFwsqkdfPElu26jhMljBA4iUk5JvVdjvmovZJCw
Message-ID: <CAEiyvpre9_C0KgJEGmmxDznxfAJLA6zkK9BU15tODX5nESc9Vg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: lemans-evk: Enable the tertiary USB controller
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Swati Agarwal <swati.agarwal@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=UKjQ3Sfy c=1 sm=1 tr=0 ts=698bcc06 cx=c_pps
 a=72HoHk1woDtn7btP4rdmlg==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22
 a=GgsMoib0sEa3-_RKJdDe:22 a=EUspDBNiAAAA:8 a=CC4Ma_bIzGP2HRW-blcA:9
 a=QEXdDO2ut3YA:10 a=kA6IBgd4cpdPkAWqgNAz:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDAwMSBTYWx0ZWRfX3bPo4HvS99MC
 lkVvbGawrlMzetISk4pNXx7jOqyeCWInMxxTkDro1YWkT4R3iecatfJ9ihC++gZQEHFsMFQHJJx
 fPyq5XEqSsVnBrDv/nBloQhBxMx7WtRePsTIKZvZy4xMVyJ6144ihJSh6SrzWhSL/mS3WQHmj2E
 IhYvZjPI8lEUqZptz3vn8JMYIDOUKPjSpGFKvmscBz+4+6KqtSZX3n7oD+cq9PSZf7hRXwd3pjq
 aeJZTNYMFN64okrEUIsOsxqbQZg2+i0tOjxOVEfLP9+qXmHOU//LQYAXHAgoU6cDN0JkOholVFj
 9JvbYIl0DN0FuAk3gK4JsGDwUJin1F/9vShp9niTAM7OA5BZq6UsEHo007rrugQCeE77jatbqbq
 L6Pg/RsRz+uMUbjMjr58wuRSTKnr9Upf1NX6tKXkyDnUJNYWhKqz5LrTfXPd+2/dlrVDnzJlbCv
 J8sbJEN7HRpPzEt4IhQ==
X-Proofpoint-ORIG-GUID: 5KNX1v9F-3B8ebEjE5GNPs7UY6zfBaD8
X-Proofpoint-GUID: 5KNX1v9F-3B8ebEjE5GNPs7UY6zfBaD8
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 phishscore=0 malwarescore=0 adultscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602110001
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[10];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krishna.kurapati@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-264559-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+]
X-Rspamd-Queue-Id: C293E1204D8
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 2:39=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> On Tue, Feb 10, 2026 at 08:29:50PM +0530, Swati Agarwal wrote:
> > On Fri, Feb 6, 2026 at 5:44=E2=80=AFPM Dmitry Baryshkov
> > <dmitry.baryshkov@oss.qualcomm.com> wrote:
> > >
> > > On Fri, Feb 06, 2026 at 04:16:42PM +0530, Swati Agarwal wrote:
> > > > Enable the tertiary usb controller connected to micro usb port in O=
TG mode
> > > > on Lemans EVK platform.
> > > >
> > > > Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> > > > ---
> > > >  arch/arm64/boot/dts/qcom/lemans-evk.dts | 53 +++++++++++++++++++++=
++++
> > > >  arch/arm64/boot/dts/qcom/lemans.dtsi    |  7 ++++
> > > >  2 files changed, 60 insertions(+)
> > > >
> > > > diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot=
/dts/qcom/lemans.dtsi
> > > > index 808827b83553..2710927c9172 100644
> > > > --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> > > > +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> > > > @@ -4270,7 +4270,14 @@ usb_2: usb@a400000 {
> > > >                       snps,dis-u1-entry-quirk;
> > > >                       snps,dis-u2-entry-quirk;
> > > >
> > > > +                     usb-role-switch;
> > > >                       status =3D "disabled";
> > > > +
> > > > +                     port {
> > > > +                             usb_2_dwc3_hs: endpoint {
> > > > +                             };
> > >
> > > Is it USB-2 only? If not, please define both ports.
> > Hi Dmitry,
> > USB-2 is micro USB having only HS-PHY so only one port is needed.
>
> micro USB is on the connector side. Here you are describing the USB
> controller. Is it also HS-only? If the controller supports HS and SS,
> you need to have two ports here.
>


Yes. Tertiary controller on lemans is HS only controller.

Regards,
Krishna,

