Return-Path: <devicetree+bounces-271611-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aNEHKLifqWnGAwEAu9opvQ
	(envelope-from <devicetree+bounces-271611-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 16:22:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D4921469F
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 16:22:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D104931AE98D
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 15:17:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8D473BED4F;
	Thu,  5 Mar 2026 15:16:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RGKuwQU6";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Prqlbge+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 706863BED36
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 15:16:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.168.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772723807; cv=pass; b=WE55Z9Dk4g7gQa5OEjga8JqKdrTaQtSPeL2qY2ka9oIS4b5OmEmhj8sWjRr1quRzh8MkUKFy4ByEvlydhBqc47TIuxXcgawAi2QDeSVQR+jLV2/tUO7zj1nhwu2+PkeRjzg2nnZmUgSk++x/Dp4+lfcNtmzkiOlVmAf7icpAe/Y=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772723807; c=relaxed/simple;
	bh=crHb5t9mPgAi5vYjc7XDJchLr+niSnAlhOrnEM7Lf+k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cC92Ib20qwM3E/TGgxzN+/caH0gqVodDEvrzdKix2Kud3i05+ydzqGaziK6dAyGUY0dVIfDNJ+BijeGMm2SQCbfkLuWHrp1T4cjvbCJZthglBW/6CkIm9ohHyzdp8Lt7b+ZNYaWOxlnjWKym1qJdwKXUfIBcnvo/VAIK24ypklU=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RGKuwQU6; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Prqlbge+; arc=pass smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 625AFsQi861854
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 15:16:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	crHb5t9mPgAi5vYjc7XDJchLr+niSnAlhOrnEM7Lf+k=; b=RGKuwQU6DOFKhp6l
	6dghomZ0tp/CLz+XHH/lmZ/E+RUEW9c41u3zq5L5M/UJCWXqo+3fowHrsxw7KQIx
	zkhT8/NZSMn6mDoSMgB0h++rk8qjUchFIYj7E/s0TD0iJYt2BWhFz0vviPQYCGwr
	FVCzPjtMyrensDOqAQ+8notrnBAzBgZdQyBIiYeUYKdcrktOzD7u3A/hsEDweZ9s
	8obb9y7POvg0xPzyLAYP5q25R5t3BVX9XheLlSX1c6IRncruWnBRXwr0y7RHoDde
	73ScNiMu2kWQVZftx96Jk25rkiSdnIuHcSEpSgfIOwo3ClZWC+2ZXqdeE4uZX3iD
	T6cPWQ==
Received: from mail-yw1-f198.google.com (mail-yw1-f198.google.com [209.85.128.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cps0wbrsk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 15:16:45 +0000 (GMT)
Received: by mail-yw1-f198.google.com with SMTP id 00721157ae682-79868381229so158646257b3.0
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 07:16:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772723805; cv=none;
        d=google.com; s=arc-20240605;
        b=CwMGBXguSnOzAbxMwFMCAzEsPh6gJdUZWhrDbz0osMAWg/29gFBKlKyX+oI5L/v4ug
         JTnbZXyOuWq/y4V33Y98vltaLphQy4qx3OgJnaJfr8YkEAhcMytEZzA/ry/VC2XykUHC
         NkTaF5WHbO/y6I0/nnHZ8FKkm+nBcwdq1KQRZSHvFv0lM6qtqUMIOM1tMtDckhESbMUC
         etzreex+2DxAAZ/F/YrNSJou1pakIAXPv0/tYh7XvjOx14bECNDkSkGQXm+4zRas9tnI
         ijsRwdK1aS4KJDUDIY44oDGgjN7y2CEwnhK64GIS92EoBAztVBybo6L+udZz9JzT/nk8
         K7Ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=crHb5t9mPgAi5vYjc7XDJchLr+niSnAlhOrnEM7Lf+k=;
        fh=yomvDAXZHqm26HMJOC6bMCAr1aOS//gjqoFtlUYk0uQ=;
        b=FWKczUMINK8ipxpHuIIQVNNhy0QWsPt8An6Uvg8If6k/9ccmtxRdZ5ksa1uSrQePRX
         avsiPDXNwuQlhIsVdjGLcClZxktRzEtMKnvyZFaGHVlNw8oUV5g9Xa0bTd4tFye22FU1
         aL1iXIXahwpjsFtFONXtQ4aGhUO6GaWkrf0zzCLhXNLrSkRAjEAqmzYZnXdV8v8FOirh
         6O+wWT4vCxsEUWKkG3kbeu+UtnzFB5978ZXF/2Cy1VM49sbR07KAvDc1PEa2199fKkYx
         n0dC3NwME+Hy1kRTBCHrTADYToSW1yPhevNfqUoKkouRS743nnUKSGaddguVngCEBkIo
         BUNg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772723805; x=1773328605; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=crHb5t9mPgAi5vYjc7XDJchLr+niSnAlhOrnEM7Lf+k=;
        b=Prqlbge+tEodu6sU4v+xFmOLBzQM/HcCpDLyczzaTYKWsWS5Izsrjk7UkcvfT6b9Nx
         7WLDpNzQkRL3YFNikfDNNFrItO9Im4gDaQccONCtbVqcWq/VRs58P/Im2PiLlF7+bEwJ
         yHG32bd5glk5zCKC9Jn11pLDHqq+FcpL1OQBSVY1VSQh/NKQ7fQELd5RS7ifHhkFZ69x
         IwdVN8Tu0ORAhd6NMGh/vh3LJUC9UW2WFzbyYMGQzSYxRNaWnRV4sUq0PSOAt/XjWoOv
         siWfT2q7WPAv5y3FG56Z+TZTE5ejsdbt2hrTzqVFukA3EZnqiDpW5Q4SzK++ajzDJXom
         ItZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772723805; x=1773328605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=crHb5t9mPgAi5vYjc7XDJchLr+niSnAlhOrnEM7Lf+k=;
        b=MTYnRFmje72Uo0gG9v5qanqDwQpitgvFb03UGah+mAPqglJtWwzKjFjcEKTbjsB4eM
         hz3ZjNtgTqp3nPXRFlsYE2LkI0cxGfmOZ0A9R3vuWid3NLQjrW0GJmv9uzeg9Zg/Qw9h
         g+7fQ1/jrmIb2YkddpGEdVUu/wWQBd/KK0eeBjNRckWGjvaXeZpjGa8yltNl4aqY9FUk
         lyUagApYgKsMvEBGToCZwOOFSsvqRcJ6OLiRlTybwSBFY02fnIV0nZ0HHwvFb4Qk2Izz
         RNDF7lV76cGPHuyslirVbOuXGv8Wbrq4K9Tk5RAA5iY3HWdCTYG7D9M/awWIO+CAZoYB
         cXpQ==
X-Forwarded-Encrypted: i=1; AJvYcCUIB/Ww8nzln20Yh7xelhSCbSIDC2NZZpTqsDUg3GhLUrr2Vbz7qFTMX5BBTgZwmWSYojJn31OTf/hr@vger.kernel.org
X-Gm-Message-State: AOJu0Yyp1kbyvUyWwxJtYXus97om+PaKXutdPJDDxTVgBPK4zfXND0o1
	0/+brxQ/VJZejQ5sdd4NBQKAda9ELsy8YJdC+pJ2GZRt6KGVjI/hIN+COjTfbNZV7cNh9DKdY/p
	vRy0L7LcDn6U2l9V0NRushJp9OMqFa8sT9MzWcaehrnNtB18NywV+3PqFktQOOMOArT7GhrGZS8
	k1Q+9A3IVXUO1M1Jh9t6dikRTkopPS86RCHV/tMlQ=
X-Gm-Gg: ATEYQzzT64S7b/70B+88OUJ7fCGoqZMzVhVFMwbhxeB16d1KNqEENQkrx2LaUNwevse
	9ldfuoC5vi+3OsCpzlBYgyinKf5kik8IxN1ZtAlyg6DhIHpyzPbRBDu6sWLg8YOXBJFg5HYl4bR
	ThPlJ6DPzS+8gdZune0ybillurwUxhGjMA2CP9HBS5EmBlDOUsn82SZ0CLVOVODunEz7A69bOzm
	YlX8C3m+8B0j4b4HVSElhAE9X5OlnVURc/6cNc=
X-Received: by 2002:a05:690e:1443:b0:649:4f58:5cd2 with SMTP id 956f58d0204a3-64d0703ee7fmr1901168d50.0.1772723804410;
        Thu, 05 Mar 2026 07:16:44 -0800 (PST)
X-Received: by 2002:a05:690e:1443:b0:649:4f58:5cd2 with SMTP id
 956f58d0204a3-64d0703ee7fmr1901121d50.0.1772723803824; Thu, 05 Mar 2026
 07:16:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260305-cci-scl-stretch-v1-0-8412abc65745@amazon.com>
In-Reply-To: <20260305-cci-scl-stretch-v1-0-8412abc65745@amazon.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 16:16:31 +0100
X-Gm-Features: AaiRm53DAsBS99uru1n2DlZ8zMVjWH8FImgxyp0FBOXWU38dtecZYRBCGYS7V2Y
Message-ID: <CAFEp6-3ZuSOW4apj2Ww2DJ5_5Gw-CDXV_9Qc2=wW-JLP8Vbatg@mail.gmail.com>
Subject: Re: [PATCH 0/2] i2c: qcom-cci: Add DT property for SCL clock stretching
To: ckeitz@amazon.com
Cc: Robert Foss <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-GUID: avg7DHoPD5-1m2xRRDsDchLKpib8rqCB
X-Authority-Analysis: v=2.4 cv=BNK+bVQG c=1 sm=1 tr=0 ts=69a99e5d cx=c_pps
 a=g1v0Z557R90hA0UpD/5Yag==:117 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22
 a=eoimf2acIAo5FJnRuUoq:22 a=VwQbUJbxAAAA:8 a=S_SDiGbfBHtK8l1EkXUA:9
 a=QEXdDO2ut3YA:10 a=MFSWADHSvvjO3QEy5MdX:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDEyMiBTYWx0ZWRfX87VYG57w4ia/
 JN07Qbkflo/MqkJib3rX3jmBXpOMJTTW4y+8NMBPUc8tfQ5ahEzcI+xP9JejWQ2lpTLJDRCPhPX
 r7LbN4xC0jSdJrpLhHSoiyLGH2tHEHKSe0BAsm1Ef5vYPKljQzGv3adqSxop7Pr1kgO4wO1xg1e
 uc3wcYtHqwUl26submBTUhrJusZ3NXppcNpSOLOL4Wr+5BHVGwXrANvYncFNFrTfGkmb+/0Csnn
 v3yBtwyMvY9C9jWmP/qb+Hiy+oP4QEpJsPyOcSnc90OAVhD7+cuhXSjmULyEA0xV6pvlBSVE7Rf
 DW2zsFrIzYpiiLX+tbiLJrENeZIN2o84uS/qEDGGgXt9QNWVaG5HZ5jEtT4wBXB8qU2Fdbti+tR
 N1M0BAeVQ61YFpSAFBRWqEJ+wGxAwnTyIASgrZXIIS7s42QMySWwOs+9pLouGLcyy2mKACl5C0o
 qBTPoCA0+TwqgkDJ8wA==
X-Proofpoint-ORIG-GUID: avg7DHoPD5-1m2xRRDsDchLKpib8rqCB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_04,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 spamscore=0 clxscore=1015 impostorscore=0
 adultscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050122
X-Rspamd-Queue-Id: F3D4921469F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-271611-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_COUNT_FIVE(0.00)[6];
	RCPT_COUNT_SEVEN(0.00)[10];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,qualcomm.com:dkim,oss.qualcomm.com:dkim,mail.gmail.com:mid]
X-Rspamd-Action: no action

Hi Cory,

On Thu, Mar 5, 2026 at 3:40=E2=80=AFPM Cory Keitz via B4 Relay
<devnull+ckeitz.amazon.com@kernel.org> wrote:
>
> The Qualcomm CCI I2C controller has an SCL clock stretch enable bit in
> the MISC_CTL register. Currently the driver hardcodes this off in
> per-SoC hw_params tables, with no way to enable it from the device tree
> on a per-master basis.
>
> Clock stretching is required for GMSL configurations where the
> deserializer uses it to absorb the latency imposed by forwarding I2C
> transactions across the serial link. Without it, the CCI master exhibits
> intermittent transaction failure.
>
> This series adds a "qcom,scl-stretch-enable" boolean DT property to
> individual CCI i2c-bus sub-nodes. The property ORs with the existing
> hw_params default so it is purely additive and does not affect masters
> that do not set it.
>
> Tested on sa8775p using the qcom,sm8250-cci compatible string with two
> CCI buses connected to one max96724/max96717 GMSL2 pair each. Enabling
> this property eliminated intermittent NACK errors during serializer
> and/or deserializer probe.

I'm not convinced this kind of hardware behaviour belongs in
devicetree. As far as I understand, clock stretching is part of the
I2C specification, and slaves are allowed to use it whenever they need
additional time. Masters are therefore expected to tolerate
stretching. Given that, why not enable it unconditionally in the
driver? Is there any downside to doing so?

Regards,
Loic

