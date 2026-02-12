Return-Path: <devicetree+bounces-264934-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PVKC3WQjWl54QAAu9opvQ
	(envelope-from <devicetree+bounces-264934-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:33:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1A812B5B9
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 09:33:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5571A3009141
	for <lists+devicetree@lfdr.de>; Thu, 12 Feb 2026 08:31:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B592C2D8799;
	Thu, 12 Feb 2026 08:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pz1YHBlp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bH02xJ98"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72D6B2D7801
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:31:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.168.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770885076; cv=pass; b=Wzc/hNwxeftK8LRZHKdonuktEnG6o+ZfBfBTcU+kohSwQxgp9qzwqaxN+7Sm04tpvkfY7M36DMyxcqMcY6IYRfiqYVnPjoeiGFbQD/UgARGpPT6iTzn9rIAxQPLIy8COPibUY2b49TK3b0hHSjG20npkLWAmZfeJa2f37italFM=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770885076; c=relaxed/simple;
	bh=AbqZ0F/4suD4aG4hXU9S7RiPtsGKmtxhUmFHtOFkWj8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kj7zSgiUGeotwxkayQGKAXDzVWfH9IAIr4ltbuFc4bgv1E8xl3Tgna0/IVUtp3eRWBWohtCDkKpLGjS5ic2C7qivmRDJAmC75pWSqqMkWl4151dlVuBH9Gb9BXf3gxpEbJSObP+n78YeGxzPfY54gwcOcO35Nkfwd+Y5kLpRQ0w=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pz1YHBlp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bH02xJ98; arc=pass smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61C3S67c2396960
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:31:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qI6SkHFuYlClXM2Bp1KC8h0rJJ0qy7+metZp1f11zDM=; b=pz1YHBlp0OmjvxVh
	Q9TJZyfzbsWtxpLYQuOl3b4UxbroblAvPIZSFRkFW4JoFL388tPUz4tUkzSBQGCc
	aA9FKSWvzWqZ/w+F62viV0bKhPSHTBa4TfCEXPLOPf0lZCSfL+aB6HByhmZ1/fwF
	41wg/zgEqj2iTVeOJ8b3Hlct2us0ljIHwdKQfS2HbbGqJQbkjFqmf1jFuKN18hbE
	11ZC2qUZYwoHOdjuw5EgOSriBILlAkmUnHKnxRX+J34nQVxYt8vU+LvnEJdxCdYT
	mts44JSvsmj8+OP52wCQEt4iMhRLo7/oxR1eDRqKgaoiueLFf1UTO5k9SKvUdcSc
	Drfelw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c8supbe7w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 08:31:14 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8ca06e38994so1696018385a.3
        for <devicetree@vger.kernel.org>; Thu, 12 Feb 2026 00:31:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770885074; cv=none;
        d=google.com; s=arc-20240605;
        b=UiCJ1IozdJHV7YE2Y9rYM3caXkUpSKrlXoOT6T7BDo5Zow2gsFjHGOyBEO2DJoRxww
         8TyrQ0/+EVBFjnhLdMXPrEq6bAtIXymZ6UMewKwpigatFOBg5pAbTAQoHhb4+FRLhBGN
         26Kgpnp19eF5OcY44YL+bRqZfrdpe5Miz721VO475OPTxtqKDo2wXt6wu5RVYAQMamVp
         nL2yyrRs7dTBwAVbngn5ucW5W1sL4wkgRxNCuBtINOwkLyswNQzSZI+0xt6jtFivJxRd
         MN3mkWgu6D4dCoAgtlqP6HAj8AgY9+Y/QCqWKIlEPo5PRoQQgh4qxg4SqhGOMQNpdJ4b
         9FGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=qI6SkHFuYlClXM2Bp1KC8h0rJJ0qy7+metZp1f11zDM=;
        fh=ZIUEW6TMwDEV+DqNxlTX0STOepeUDoFwXW6oeg+0/t4=;
        b=VnG6ZL1V9BMjthqc69rT22oEwJrgsJ57rwZCxwTrC4lnb+JfEt6ZldRj9b9XludZD7
         FMeoip9NPTRNqFL4xtHF27oHAeykJr41F8i6KlYdvDI97fWDsVJCGX6+aRLJ54tOEeDn
         cSZt7kiHniZRYyrLWQYMKxU4iZ7mDnQAeekIxHO3lCpteQxwYeaec1BCTRNtaXLgpF1o
         bW7JkodS37w6oCQN9UU/JmUUGtPtnPuuNt/5lfmIoQMg9yiA7Fpoe7C53VKc4Ri9oXgY
         uo8CSZosAeLONo20JCLiaPDVb2iNiSf5koeIL1HXT6XTCwQ8drYI3Y2NPi8gIjr82eWM
         AZwg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770885074; x=1771489874; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qI6SkHFuYlClXM2Bp1KC8h0rJJ0qy7+metZp1f11zDM=;
        b=bH02xJ98WxAitY1PgWpIFKi7oF1HJfe+E0zy993s02pMtOBibffdqaR6ioI4OGThXS
         fnWI5F6vbwtSPx5L1er+cyWV0ZIj7hItYudF79VLfDyGieS41w59XPXzSCbuwl53CQU3
         XJP9MuGO4Lj+2jVjPKDRNOHvVAQxDSpBQlWqmEUsSbiR/CU1RKLmACZ3HvuWUW+W7huy
         WQggEhJjrGUAkP+sgV2oIR8sUm2zB/QLx7NVgAl8y13/WAFwPTRRASqzb8urabL3RG/c
         ncpd6FCHAubMSRbA6cRodyqbqSb0/k7gk0kH7htirH3ZJP1cFPT9EVvDE8Qppgb4SwjH
         WRrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770885074; x=1771489874;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qI6SkHFuYlClXM2Bp1KC8h0rJJ0qy7+metZp1f11zDM=;
        b=un3vedLwe8mBlzGw1obgs7LZ44SF/mohpQ9brRERH3riHO21CMmkjon0kyVW2cuWpu
         mJhl8TWvyzn0ImSe5I+3YFEA0nas/ox5Sq5MC0CcIQ0MS25JIMG+I1MBm02ApqTf2ApJ
         5gBQh3Zp4/VBpDwAhWO+D/Q4gbAXY+ZBjeE90InszERZDKdxoYjSg2mrzG5yngQ7WRvy
         j9ZZsXRTPDPmol60uTF/x+JeEiR8b5rBVh/H9VFohVEHsAhgNxmfbuMticig+MSLwCRx
         rssliUbgq/4wE87bInS1wjBVZzvnlDIOjhBZgWq/8cgztWPahcyGHsjBzuDPnVhCERb/
         EyBw==
X-Forwarded-Encrypted: i=1; AJvYcCXPshMXOYMWJxuyKl4Cw6E9BRzufe4mTRfOsPsaFgQGakzsTgSC5NCYoOQTpvyVlRaYaBuF8rQl3/e2@vger.kernel.org
X-Gm-Message-State: AOJu0YyXnniHC22TF4lFLiFI00I6mr2HDwfZ/6OJCoVmgPdLndxGO9dH
	bhWimUQ656bUQgR9WLLlevKNEh6M9G+cKGDzxhtneVNKNeFkfy1ShFx8ryARhJ+b914XA272W00
	1STqMKxTjXJrHbWdE6CTyN9PqjFlDaeLLPnpuv/WF5KK5yIwc4vbmTL6DmRWHnDKMMZdCfpV1to
	20RQjXFkKbkwQjApejsu4KHo+vUPJryhqXvJAmsfc=
X-Gm-Gg: AZuq6aLyHZkFs4c0Nmc+uzhmFkjVy+AC0xB4DzzdVnL/aHHfrCEiIk0sx2Nh+KtUodO
	NUz03ShJOtGTzM7mvynAF1DmFt6koN1T00g834115ZcjUOkwV+u41dURY6DGsHRoT+XJfVRLs7P
	UfIDwTJVVK8cm8eSfpqFpjzZdyufgNDTfadHKYvs+7CQIOv/lXobEkzxut47F+X0coTmCJtRR5O
	W21pm7XPkuvNga3VDuJ3HjhAtf/IOm1Ge2l/9GB
X-Received: by 2002:a05:620a:254b:b0:8ca:2f33:6472 with SMTP id af79cd13be357-8cb3307aa0bmr256830085a.22.1770885073508;
        Thu, 12 Feb 2026 00:31:13 -0800 (PST)
X-Received: by 2002:a05:620a:254b:b0:8ca:2f33:6472 with SMTP id
 af79cd13be357-8cb3307aa0bmr256827585a.22.1770885073068; Thu, 12 Feb 2026
 00:31:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211-uno-q-anx7625-v1-1-677bbcf63668@oss.qualcomm.com>
In-Reply-To: <20260211-uno-q-anx7625-v1-1-677bbcf63668@oss.qualcomm.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Thu, 12 Feb 2026 09:31:01 +0100
X-Gm-Features: AZwV_QjDhd8srUKpdqk5FW37dWB9y8DegTCl4HIlZmKlu_YuKRglUllsb-nr1d4
Message-ID: <CAFEp6-0Ru1qf5yw64V2NJQPWXm+L8QT5+t3mVEU6jMyJPMHDZg@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: qrb2210-arduino-imola: describe DSI /
 DP bridge
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Riccardo Mereu <r.mereu@arduino.cc>,
        Martino Facchin <m.facchin@arduino.cc>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjEyMDA2MiBTYWx0ZWRfXz26GxDOyP66F
 KPchrZVWFWDar0Ztio/5qGrgowBpSccm38CnGptK2dEVLOsbB2k54zgk9r24rk325DOh7W566/Q
 WoETSMZP1+Wdo+1vU9C+yFBJUwce2gFLZHyKPC0ipXRCs/njaV920cVIF74KImS+E3+DRVMIlf9
 HxpbfwYZn7Ipr+ZS+L9EJE6+qfx3lIUytDopinOCHYH26wFlQMdI/876kJIcrChXYLfLKhZGV3g
 8JVDkGwNoLBDFqqQtQmDptNDeyTV6nF7O8fGO/hIYJ9g0hrRNEW430o62RSTD88p0P3iB0fLsUB
 58mdNeSyqX3QG/rTmRmutNEdVg1J0yn3YCUXu0mUPLZvoQDOBtj/dNVAEqDhFkxC+EkFYiHNsri
 g01CWNr/COsCgjkZOga3KL92bMx/FxQZlB3tPnXcUATZQxQmf9o1LrJOIbpMncqKeQDMMwGBLyf
 kSds70uVFtTvAF1Rl4Q==
X-Proofpoint-GUID: hZ8tf0anRHvKK8QAXXjhcoTWEvjYFI-A
X-Authority-Analysis: v=2.4 cv=Uslu9uwB c=1 sm=1 tr=0 ts=698d8fd2 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22
 a=GgsMoib0sEa3-_RKJdDe:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=ODKxnnqWvjNKe2Q0mXsA:9 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: hZ8tf0anRHvKK8QAXXjhcoTWEvjYFI-A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-12_02,2026-02-11_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 malwarescore=0 phishscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602120062
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.0:email,oss.qualcomm.com:dkim,mail.gmail.com:mid,qualcomm.com:email,qualcomm.com:dkim,arduino.cc:email,0.0.0.1:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,0.0.0.58:email];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	TAGGED_FROM(0.00)[bounces-264934-lists,devicetree=lfdr.de];
	RCVD_COUNT_FIVE(0.00)[6];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+]
X-Rspamd-Queue-Id: 8F1A812B5B9
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 10:28=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> Aruino Uno-Q uses Analogix ANX7625 DSI-to-DP bridge to convert DSI
> signals to the connected USB-C DisplayPort dongles. Decribe the chip,
> USB-C connector and routing of USB and display signals.
>
> Co-developed-by: Martino Facchin <m.facchin@arduino.cc>
> Signed-off-by: Martino Facchin <m.facchin@arduino.cc>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Tested-by: Loic Poulain <loic.poulain@oss.qualcomm.com>


> ---
> Note, to function correctly this patch depends on several patch series,
> fixing the ANX7625 driver:
>
> - https://lore.kernel.org/r/20251218151307.95491-1-loic.poulain@oss.qualc=
omm.com/
>   (part of 7.0-rc1)
>
> - https://lore.kernel.org/r/20260121-anx7625-typec-v2-0-d14f31256a17@oss.=
qualcomm.com/
>   (part of drm-misc-next, to be landed in 7.1)
>
> - https://lore.kernel.org/r/20260211-anx7625-fix-pd-v1-1-1dd31451b06f@oss=
.qualcomm.com/
>   (recently submitted, hopefully to land in 7.1)
> ---
>  arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts | 112 +++++++++++++++=
++++++
>  1 file changed, 112 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts b/arch/ar=
m64/boot/dts/qcom/qrb2210-arduino-imola.dts
> index 197ab6eb1666..ba3f0c74e814 100644
> --- a/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb2210-arduino-imola.dts
> @@ -6,6 +6,7 @@
>  /dts-v1/;
>
>  #include <dt-bindings/leds/common.h>
> +#include <dt-bindings/usb/pd.h>
>  #include "agatti.dtsi"
>  #include "pm4125.dtsi"
>
> @@ -109,6 +110,16 @@ multi-led {
>                 leds =3D <&ledr>, <&ledg>, <&ledb>;
>         };
>
> +       vreg_anx_30: regulator-anx-30 {
> +               /* ANX7625 VDD3 */
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "anx30";
> +               regulator-min-microvolt =3D <3000000>;
> +               regulator-max-microvolt =3D <3000000>;
> +               regulator-always-on;
> +               regulator-boot-on;
> +       };
> +
>         /* PM4125 charger out, supplied by VBAT */
>         vph_pwr: regulator-vph-pwr {
>                 compatible =3D "regulator-fixed";
> @@ -142,6 +153,83 @@ &i2c1 {
>         clock-frequency =3D <100000>;
>
>         status =3D "okay";
> +
> +       anx7625: encoder@58 {
> +               compatible =3D "analogix,anx7625";
> +               reg =3D <0x58>;
> +               interrupts-extended =3D <&tlmm 81 IRQ_TYPE_EDGE_FALLING>;
> +               vdd10-supply =3D <&pm4125_l11>;
> +               vdd18-supply =3D <&pm4125_l15>;
> +               vdd33-supply =3D <&vreg_anx_30>;
> +               analogix,audio-enable;
> +               analogix,lane0-swing =3D /bits/ 8 <0x14 0x54 0x64 0x74>;
> +               analogix,lane1-swing =3D /bits/ 8 <0x14 0x54 0x64 0x74>;
> +
> +               pinctrl-0 =3D <&anx7625_int_pin>, <&anx7625_cable_det_pin=
>;
> +
> +               connector {
> +                       compatible =3D "usb-c-connector";
> +                       power-role =3D "sink";
> +                       data-role =3D "dual";
> +                       try-power-role =3D "sink";
> +
> +                       pd-revision =3D /bits/ 8 <0x03 0x00 0x00 0x00>;
> +                       op-sink-microwatt =3D <15000000>;
> +                       sink-pdos =3D <PDO_FIXED(5000, 3000, PDO_FIXED_US=
B_COMM)
> +                                    PDO_VAR(5000, 20000, 3000)>;
> +
> +                       ports {
> +                               #address-cells =3D <1>;
> +                               #size-cells =3D <0>;
> +
> +                               port@0 {
> +                                       reg =3D <0>;
> +                                       anx_hs_in: endpoint {
> +                                               remote-endpoint =3D <&usb=
_dwc3_hs>;
> +                                       };
> +                               };
> +
> +                               port@1 {
> +                                       reg =3D <1>;
> +                                       anx_ss_in: endpoint {
> +                                               remote-endpoint =3D <&usb=
_qmpphy_out>;
> +                                       };
> +                               };
> +                       };
> +               };
> +
> +               ports {
> +                       #address-cells =3D <1>;
> +                       #size-cells =3D <0>;
> +
> +                       port@0 {
> +                               reg =3D <0>;
> +                               anx_dsi0_in: endpoint {
> +                                       remote-endpoint =3D <&mdss_dsi0_o=
ut>;
> +                                       data-lanes =3D <0 1 2 3>;
> +                               };
> +                       };
> +               };
> +       };
> +};
> +
> +&mdss {
> +       status =3D "okay";
> +};
> +
> +&mdss_dsi0 {
> +       vdda-supply =3D <&pm4125_l5>;
> +
> +       status =3D "okay";
> +};
> +
> +&mdss_dsi0_out {
> +       remote-endpoint =3D <&anx_dsi0_in>;
> +       data-lanes =3D <0 1 2 3>;
> +};
> +
> +&mdss_dsi0_phy {
> +       status =3D "okay";
>  };
>
>  &pm4125_vbus {
> @@ -361,6 +449,22 @@ key_vold_n: key-vold-n-state {
>                 output-disable;
>         };
>
> +       anx7625_cable_det_pin: anx7625-cable-det-pins-state {
> +               pins =3D "gpio46";
> +               function =3D "gpio";
> +               drive-strength =3D <16>;
> +               output-disable;
> +               bias-pull-up;
> +       };
> +
> +       anx7625_int_pin: anx7625-int-pins-state {
> +               pins =3D "gpio81";
> +               function =3D "gpio";
> +               drive-strength =3D <16>;
> +               output-disable;
> +               bias-pull-up;
> +       };
> +
>         key_volp_n: key-volp-n-state {
>                 pins =3D "gpio96";
>                 function =3D "gpio";
> @@ -428,6 +532,10 @@ &usb {
>         status =3D "okay";
>  };
>
> +&usb_dwc3_hs {
> +       remote-endpoint =3D <&anx_hs_in>;
> +};
> +
>  &usb_hsphy {
>         vdd-supply =3D <&pm4125_l12>;
>         vdda-pll-supply =3D <&pm4125_l13>;
> @@ -443,6 +551,10 @@ &usb_qmpphy {
>         status =3D "okay";
>  };
>
> +&usb_qmpphy_out {
> +       remote-endpoint =3D <&anx_ss_in>;
> +};
> +
>  &wifi {
>         vdd-0.8-cx-mx-supply =3D <&pm4125_l7>;
>         vdd-1.8-xo-supply =3D <&pm4125_l13>;
>
> ---
> base-commit: 9845cf73f7db6094c0d8419d6adb848028f4a921
> change-id: 20260211-uno-q-anx7625-26f8fa8360ca
>
> Best regards,
> --
> With best wishes
> Dmitry
>
>

