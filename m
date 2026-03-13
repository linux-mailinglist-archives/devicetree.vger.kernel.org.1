Return-Path: <devicetree+bounces-275071-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SLJbMfvYs2mzbgAAu9opvQ
	(envelope-from <devicetree+bounces-275071-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:29:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B51C2807F5
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 10:29:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7613F318DE93
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 09:23:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A6773822AD;
	Fri, 13 Mar 2026 09:23:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="loxCBjWG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NenkZIPh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AA1E367F35
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:23:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773393796; cv=none; b=DtMhJK+HVKQbXd9JtZnsVeGgaxrDT9ImnrRYEU5IsJq/faQkD53kX1G4ODv4HC2v8vjWHpB/QGK9G3b2RVaM1IuLDr4Rc/AKFeJzhSYkA0ekjnPT2SaAbznUS0kdvIFrdjQKQ4rE4W1MCkMjtnThttobUncdjz+xOYr+LV6pa8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773393796; c=relaxed/simple;
	bh=N4BOZNMw79qtq7smi8rJLkG4AnCK1P80RiHgjYefkiE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ON6/EOkH3DDLK2r5RDsSi0SPGka0gSDhPUpxiyUMz6QElEsNGFj0cQ8F3avKmY3FhG/N9CSozxd/cF85QK8ZzIhoAlORygV8RIzWacgS/2oEvut/AochgL4f3LU2/BZH0XubTJPKhoXpFP0xyEpkOHzL6aY50N/jjU8O5WZ1zQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=loxCBjWG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NenkZIPh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D5thDs1014950
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:23:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mh6Wa6dLiUxU5Y/iu2uw1tF+On8woc5oZOHwtvQ8Hdo=; b=loxCBjWGCw806AZO
	pimPIlHcTyHmCKqP5dXnAfY0Ke2Ficwansh/RbPXOIcVSMRUKhicjGil5lSK5pfE
	SSeUIEXMC69jrErFHDexfY2BL/9q3x+R0eoW+PysUf46adoUbkBs+Tv4k+zUIkDI
	Opvbfj+PztEbzZtULqyv1Mt27Fnu2hJ5++IlWEN/btDNO4h0SYSmL67KXRScXhL1
	317LTQ9OxGQ9bp7VOVU6H67zaC7aW/9tB5Zrd5PTWFmhAmNEPpTgJQt0r6H9ZjtG
	g31X5qB2+LrtoJrUS1+OcCpoW6nyjuKZkzTlpCcUa3fohHN+pw06UF/nKdnELcdT
	5udEyQ==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cumvdmsyw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 09:23:14 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-35a03e82489so849713a91.0
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 02:23:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773393794; x=1773998594; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=mh6Wa6dLiUxU5Y/iu2uw1tF+On8woc5oZOHwtvQ8Hdo=;
        b=NenkZIPhFfTz7yMm6z7NMoKsWpt4z9IXBkMKiEuGdr7QW+M0Yj8XDKGTjg3pKqWv9+
         AEOHLuUeVE6oheXrZcFRh9xSOVhxpZp/XI2CPy63Z4nPsRgzIujaU1Klx0Lz8pCljMhP
         8o2RBcD7DWEffDriSH7GS6n+Fbsv6K+d0jGgMAihgraaHBT05W9k/bw2Xminr1Uj6OqW
         Mj8QlY+A5A9FHahQkdPfKPGfr7pgS6TBKt9fAybvMi3wsiUyoEmbhPiaWxgmYnqRjX4M
         6XFMQhntWoi9nWQiY1HFxfqpJbrvGLM/2OmU3Cb9ync/52OEFsF8xjooYYPt+S97s5rh
         d9Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773393794; x=1773998594;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mh6Wa6dLiUxU5Y/iu2uw1tF+On8woc5oZOHwtvQ8Hdo=;
        b=apnRw+xMcFwMVrpPPnrHVAEzXYQnHcSPGy34SrnAxJy5brxFETvw1eQ5IH0tF3R1W0
         UvhVyFteCxAXRQY1kq8n08qxCZJk8mQIF1xtFDGdvVLG7lpnH0uCR+bKawhPxehjK4n+
         z6VybyF8Di+VfzgSESdGA4Z0kVWooRFCushwsrpbn6PvuPrJ6ppi++/G6IeGdknifq+f
         NBjouNENlpyBXN0r6Dc09ZNVJEjrz/Hf8EDlnXKKOX4xlxqsbsU7SMZwgQGkmk8fruWg
         llJqjRITBWuF3cCiPE5NIHKlizntWLveFLzjNrxa/BsGEEAh8Ts8GiSuaCMDvR0gTRiz
         XNYA==
X-Forwarded-Encrypted: i=1; AJvYcCVR/Co7uiLZFtJEs85CccNULQGiNc9cZ+bvZ9G3efJ1a0SuOS75hUlkoNwV9M8lXPCp3/vSoul/EfKm@vger.kernel.org
X-Gm-Message-State: AOJu0YwHJThNTDp8Zs4oGeGOU8L4OadTG15Yk3yCEUIuKmU0fbvcPnsI
	9Vqj6RIirjFMIYDN+GaK5XkboofMInRk3KgAFRqjc8I9/JDechJgWKFwkkoQ2Ja+JqfZU1wR1Hq
	axr5WoTEEVdRoks3kQBq/u3Sn1gS45o1E7XqcNTpNssO9/lV0N1eCgcGwBX2fVdDS
X-Gm-Gg: ATEYQzzHHcmWk1TdO1YxAijsWsNWKEIBbdI+xJuSSUGkCVkmmRUx0T60jWH7DgJYSKz
	Qb+mELmLyxiULPOF+pHpj9x+9obCDBw5fIgO5l7uco1HYiG2/9K0MTimzz97rx1oq4VMSW6Q4O6
	GBpX9doQ1aNslt1np/y1PB9kH2SFTP4JPr/GNoL4br2P3xyr0Id1+fLzjsd6E+xGhWZwxaY3glV
	nN7UsbuT0o7fyn2jn3t6ckGKFqhj8hG63k75fhrDPhsI2WdrCWa7Nf4MX48qFCy8CDDpdGwefB1
	El6pOTAz6+Xn44bzCJz4lw6iYVg4BL6R7lyOQ7zOEPyx22EQI750soZGW0Gcds+m5lQTl0pZDnT
	IOLko9xVhz+jB845C/bIl2awBdlBTnukGfaibHIBbUodWoVC7Ww/cd1BJCc3OOU3TMElQrwo4wW
	1XJMmCqS7UhcViYwoM31qdM7SzjcG5w1bUWEHIoWg8zw==
X-Received: by 2002:a17:90b:5348:b0:352:d19c:684f with SMTP id 98e67ed59e1d1-35a220baf48mr1538484a91.8.1773393793598;
        Fri, 13 Mar 2026 02:23:13 -0700 (PDT)
X-Received: by 2002:a17:90b:5348:b0:352:d19c:684f with SMTP id 98e67ed59e1d1-35a220baf48mr1538469a91.8.1773393793140;
        Fri, 13 Mar 2026 02:23:13 -0700 (PDT)
Received: from hu-vishsain-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35a03005f7fsm7948376a91.15.2026.03.13.02.23.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Mar 2026 02:23:12 -0700 (PDT)
Date: Fri, 13 Mar 2026 14:53:06 +0530
From: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        prahlad.valluru@oss.qualcomm.com,
        Prahlad Valluru <vvalluru@qti.qualcomm.com>
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: monaco: add lt8713sx bridge
 with displayport
Message-ID: <abPXerHW3YoEcQ0r@hu-vishsain-blr.qualcomm.com>
References: <20251228-lt8713sx-bridge-linux-for-next-v3-0-3f77ad84d7d1@oss.qualcomm.com>
 <20251228-lt8713sx-bridge-linux-for-next-v3-1-3f77ad84d7d1@oss.qualcomm.com>
 <z3y6wb6irac2ef3f55roy66wzyufel4vannfbynoivzgl2cuob@um5eomgvt5uc>
 <aZo/NRg3IxdyKZ6I@hu-vishsain-blr.qualcomm.com>
 <wvjfla4rk2qxzayloov6ofna73kl22nls2a6h5uzvap4kasfh2@nqvpdsassfcx>
 <aa6OGbZjT2SdTxJL@hu-vishsain-blr.qualcomm.com>
 <i6cdhcdj7f3lbfvu2lvakbir7ovds3yfqyod5wceiedjqrlxxo@5gntl3peqz5b>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <i6cdhcdj7f3lbfvu2lvakbir7ovds3yfqyod5wceiedjqrlxxo@5gntl3peqz5b>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA3MiBTYWx0ZWRfX8bFSnquhvW1y
 TxUA/XOCRJNNK7StzsKbjRTsIzmdm5fU9UYL+/oMNwmxmj1qp53X+DSw+tl1XG15vfioSQ6z3qJ
 HVRYbcEoqRQqMsf2mj5xckjf08j1BUKVd0h+HvH/fCgr4oMDNCF2ny4VYbBMsLUh5yR6RkRJBBE
 7dOkZ7CRIsXgsdniSK9UJJXJGZfZ+7qVFv1aD0aV3C7o83Rt1ZTqf2ysEKAJ9jBgmipQnnL0eoc
 rIMJ6RXo16h+IRzYnVtj5CWRQVlbXNvr6HT05xIYDAvc2x3dpnImhPv/CtrXkdLjWD0yaMh23Tg
 kEfRcbEpFoQZ1StBzoWsWi3uToWkln8/zSkC0ZoYXQJUp2DlLXNiZhyapogJGsGrtEUkDGGZ7GR
 Tw1JsUawOqpFwjw9FMMxuOLGTJfOXXy3mJsM9wFrR/BIvTlcOwAOY90jWEsVki2YI2WKp3QaYnS
 AOwFrJVaQQrYdxpq8cg==
X-Proofpoint-GUID: dqvM5YZpZrskkGqvGfcY7dcVbpGpboB_
X-Proofpoint-ORIG-GUID: dqvM5YZpZrskkGqvGfcY7dcVbpGpboB_
X-Authority-Analysis: v=2.4 cv=XsT3+FF9 c=1 sm=1 tr=0 ts=69b3d782 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=J0OeYoI9xp5qq9CWbzwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_01,2026-03-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 bulkscore=0 clxscore=1015 adultscore=0
 priorityscore=1501 impostorscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603130072
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-275071-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vishnu.saini@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2B51C2807F5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, Mar 09, 2026 at 09:19:45PM +0200, Dmitry Baryshkov wrote:
> On Mon, Mar 09, 2026 at 02:38:41PM +0530, Vishnu Saini wrote:
> > On Sun, Feb 22, 2026 at 09:16:54PM +0200, Dmitry Baryshkov wrote:
> > > On Sun, Feb 22, 2026 at 04:56:45AM +0530, Vishnu Saini wrote:
> > > > On Sun, Dec 28, 2025 at 05:49:30PM +0200, Dmitry Baryshkov wrote:
> > > > > On Sun, Dec 28, 2025 at 07:10:38PM +0530, Vishnu Saini wrote:
> > > > > > Monaco-evk has LT8713sx which act as DP to 3 DP output
> > > > > > converter. Edp PHY from monaco soc is connected to lt8713sx
> > > > > > as input and output of lt8713sx is connected to 3 mini DP ports.
> > > > > > 
> > > > > > Two ports are available in mainboard and one port
> > > > > > is available on Mezz board.
> > > > > > 
> > > > > > lt8713sx is connected to soc over i2c0 and with reset gpio
> > > > > > connected to pin6 of ioexpander5.
> > > > > > 
> > > > > > Enable the edp nodes from monaco and enable lontium lt8713sx
> > > > > > bridge node.
> > > > > > 
> > > > > > Co-developed-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> > > > > > Signed-off-by: Prahlad Valluru <vvalluru@qti.qualcomm.com>
> > > > > > Signed-off-by: Vishnu Saini <vishnu.saini@oss.qualcomm.com>
> > > > > > ---
> > > > > >  arch/arm64/boot/dts/qcom/monaco-evk.dts | 89 +++++++++++++++++++++++++++++++++
> > > > > >  arch/arm64/boot/dts/qcom/monaco.dtsi    |  6 +++
> > > > > >  2 files changed, 95 insertions(+)
> > > > > > 
> > > > > > +
> > > > > > +	status = "okay";
> > > > > > +};
> > > > > > +
> > > > > > +&mdss_dp0_out {
> > > > > > +	data-lanes = <0 1 2 3>;
> > > > > > +	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
> > > > > > +	remote-endpoint = <&lt8713sx_dp_in>;
> > > > > 
> > > > > Does the bridge use DP signalling or does it use USB-C signalling here?
> > > > > And even if it is DP signalling, it should be correctly described as
> > > > > it uses signals coming from the QMP PHY. See how it's done for laptops
> > > > > with DP-HDMI convertors.
> > > > Yes, the LT8713SX is using native DP signalling, not USB‑C DP Alt‑Mode.
> > > > The QMP DP PHY is already implicitly part of the mdss_dp0 pipeline,
> > > > similar to other Qualcomm platforms where external DP bridges are connected. Because of that, I intentionally modeled the connection as:
> > > > MDSS DP controller -> LT8713SX bridge
> > > > This keeps the DT consistent with existing Qualcomm DP bridge descriptions, where the PHY is not represented as a separate graph endpoint unless there is external lane muxing or alternative signalling paths.
> > > > If you feel strongly that the DT should explicitly model:
> > > > MDSS DP controller -> QMP DP PHY → LT8713SX bridge
> > > > I can update the graph accordingly. Otherwise, please let me know if documenting this more clearly in the binding or commit message would be sufficient.
> > > 
> > > Please check how (and why) other boards handle the similar usecase of
> > > DP-to-HDMI bridges. To put it short, in your DT there is no notion that
> > > it is a native DP rather than USB-C signalling.
> > 
> > Sorry i couldn't find any good reference for DP-HDMI bridges to check signaling. I checked these
> > DP-HDMI bridges PS175, PS176, PS186, PS195, PS196, RTD2171, RTD2142, TI DP159, VM5200 but none of them 
> > wire DT graph endpoints, Please let me know if there are any specific DP-HDMI bridge you are referring to.
> > 
> > I looked for other references where USB‑C signaling is used, in those case the datapath always involves a
> > USB‑C controller/Type‑C mux/switch explicitly represented in the DT.
> > For native DP signaling, the common pattern is that the DP controller output is wired directly to a
> > DP connector/bridge, without any UCB‑C components in the path.
> 
> Yes. Please see qcom/x1p42100-lenovo-thinkbook-16.dts for the example.

Thank you for the reference. In qcom/x1p42100-lenovo-thinkbook-16.dts
I reviewed the HPG for x1p42100 and monaco, x1p42100 is having DP0/DP1/DP2 as USB/DP QMP PHY and DP3 is DP/eDP Phy, so DT graph wiring is defined as below:
mdss_dp0_out -> usb_1_ss0_qmpphy_dp_in -> usb_1_ss0_qmpphy_out
mdss_dp1_out -> usb_1_ss1_qmpphy_dp_in -> usb_1_ss1_qmpphy_out

mdss_dp3_out -> edp_panel_in

In Monaco DP0 is a eDP/DP phy, hence DT graph wiring is defined as below:
mdss_dp0_out -> lt8713sx_dp_in

I think Native DP signalig in this patch is align with the reference DT and HPG, please let me know if you are expecting any changes in the current DT graph wiring to make this clear.
 
> > 
> > 
> > > > 
> > > > > > +};
> > > > > > +
> > > > > > +&mdss_dp0_phy {
> > > > > > +	vdda-phy-supply = <&vreg_l5a>;
> > > > > > +	vdda-pll-supply = <&vreg_l4a>;
> > > > > > +
> > > > > > +	status = "okay";
> > > > > > +};
> > > > > > +
> > > 
> > > -- 
> > > With best wishes
> > > Dmitry
> 
> -- 
> With best wishes
> Dmitry

