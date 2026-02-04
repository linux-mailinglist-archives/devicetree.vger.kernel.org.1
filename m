Return-Path: <devicetree+bounces-262452-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IH3KH+WhgmlpXAMAu9opvQ
	(envelope-from <devicetree+bounces-262452-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 02:33:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E0CAEE073B
	for <lists+devicetree@lfdr.de>; Wed, 04 Feb 2026 02:33:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 93CA8305DBB6
	for <lists+devicetree@lfdr.de>; Wed,  4 Feb 2026 01:33:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8369A27BF7D;
	Wed,  4 Feb 2026 01:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S2b92LUk";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Kod/SwB4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0128E20010C
	for <devicetree@vger.kernel.org>; Wed,  4 Feb 2026 01:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770168791; cv=none; b=cZIZO1N6qWZQ4zfKeC1UQwEBDJUaVOxkxnm2wFEXF2WVgkYIULZgcIfmcH/CDYalrvNFYRdioC1q/hHe8CVvb8KuL+EkghUwB2jGBZZj1I6Slox76vMGPfCFtTMRDA2xOVS8ij0KbtpyDYBu0Hsay0V5g7z2nQC8GU3QeFMOoHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770168791; c=relaxed/simple;
	bh=DqCEPRzDRBfWJ3e2qxHUir0ic4OGREdUPZvV0qWH+Nk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nRRDOQaRIhEsrYaZUWLX05wfKlaBFTTuxMarPg8niRpeh4HgwZDKvy+UYlyK7F1L56FZPdh3IW7IF4vmrpebxjryEa4FgIxQYU5UNGbxaylG45TLH4/eam7sNbx+8C4tTNyBU7Lj9WHOgrRs4od8789r3dK4Q/7KJ8aHS0dn+pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S2b92LUk; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Kod/SwB4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 613Ilj3l2667153
	for <devicetree@vger.kernel.org>; Wed, 4 Feb 2026 01:33:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	NV+PY45GIHogHrfF+YtFU99CbalLLS8HcVL+/f0rOyE=; b=S2b92LUkS57bqFXD
	fVaK28oqlnMd32nU3nhrrk5uvX5jgkgQPthGvuAHX30jlzc4HTKAAO96KrK1XcP8
	jvVs5/rINWJPo4eNadmXMpfYbGnlSNYLox4jk9s7HSJG3h6f5VGYS2lpeLk6+jE3
	3IdndxnQPDV++wieLiWHjMpLSal2yre/9D/Epn2py7IVanGcWfwTQji/u76SQUbh
	eWTSszXjw7WZ5Z+G9GIcqlUW5OJTWdK5anKd7V2YNp8y3d0VXFiWyPaskTn5tYX8
	hKh86Ia7JW/FPmR68VWSkBp3MsxR+qlGNXW9VtFQN6YyVbwJSVLrwt4NjKmlTyz2
	icZNVA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c3nf61dha-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Feb 2026 01:33:07 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c52f07fbd0so2793004685a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Feb 2026 17:33:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770168787; x=1770773587; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=NV+PY45GIHogHrfF+YtFU99CbalLLS8HcVL+/f0rOyE=;
        b=Kod/SwB4ZQA2MjcfBN5ZQPkK7LwAJqd/ufP+7pofVQkdXujVRHTaFlvsV4Oa7Tmikb
         taX8TL88OqZrqXkyJSIEW1PymLw8cJRdFA92ZeyD7CmNc02wGoqP9Hp6BvHmxguhhIUj
         zrkfWTWshRTAfwca4hb340hAZIuQawPcc1bMHyU2r0030s23HWAf9zcRbL9Z63cDbnT6
         eLPYUoamco58nDUeXaoj6mH6XdQBFubio2zs1XeISxChpU2vgKSQnE9+mwfaox7hHqnx
         Z5UlOrrACQxW7G/14JoSo52QI2i9+4Iyu+6o8oEND7vSyNGDufYygSfy6EIP+h9HwYJV
         OfOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770168787; x=1770773587;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NV+PY45GIHogHrfF+YtFU99CbalLLS8HcVL+/f0rOyE=;
        b=CkXW3n5gT0x1OZzLFNdrEJijQ5GHiS1Y/VAvm3vP+votJANOpVEm+g6zUuC4j9rq5Z
         WtuN+xqusCriXf39Ya+49orNbi0IlKkEA2NCFRdyYePMm1yLielvjSMCTo7WB7ulAOro
         Ppj7HSE36m5iGLC+LiETtcDJDTsLBUr6JdcLLrlzpmjxKfOUmKEKGjwS7m0ZfXxmDOav
         0YTqYwGUUluzKOMz7NjqbXNQQ6X9Y0tD5lr5otGo/jOiYoXu7HdDru7cFbbaI7YwsnCC
         GC2N5F3Itv5z3Lw66bBnoe31Pl4Qxk/LhZwzXD8+rxr3jnuJBGWboAzO6kvsTglNRd4t
         fsRQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKGNCZV20A0E7lShzpg3OtQfh6gk7DsxMJtFJiC7FLd7Rg28i2Tboo4GUwdMc8eOnfYU6thctFFwUg@vger.kernel.org
X-Gm-Message-State: AOJu0YyKRFmnymu7eZ+zHqLFnC7caiV72B6DMTl7CZ48zqbmt/NCLvGy
	1tmAhJ4nCuIr4fs8K5KE8xhSpRglYjC9STlQRUh9JMAq0kRG86qWzrSitBqLU6PXnY1sx4XIuE0
	MpqZpJJHRwuUHGyuc0P5We3Y++hFLYntfFAv+WA3UqmgvMwTSJb8L1sNirQnYonSZ
X-Gm-Gg: AZuq6aKsUtijr2B4P8IqsRf8fzAGsBSTV3xO5LSuIP8bM4VwysqKmhWoIVBXDELsPtp
	JKlg6/UbIK6KlNsVHfLppAGkTL224ZGSAjz4mEHDWwDVaeIh0cO8Wn7/xSnbOg6uEiYwetQ25FW
	2Y6UjhjUoOzZQrfFxVUosx5nu1nf3AZ6+dwdZCArjf8tVTIt2zLQk2Z5kKHmrqBcKfMlXZMGIiH
	m8q7FXBO4TjQcHnKacBHOwtQp53zpVkPrsfejc8e6naP8isIMeWQ7nXO2krKn4mA1ZLiOGbKJyl
	3VgDinkvdMan6tFxgyz6IBCFr84qs4aasSnOracw1ovJwyykXYs/2WF95HRKghk0JHErUU4tqcc
	De1eCoIqNSzGE91OY0pC6s4dh0uBGiyC29X5HCaLT727LrWZdFolOfLcLeogB3Q5B9DohIFlj8y
	uaNmVc7iu1hvmuW/mbiDFDrJg=
X-Received: by 2002:a05:620a:372a:b0:84a:d3ce:c749 with SMTP id af79cd13be357-8ca2f9c07d6mr213458985a.64.1770168787145;
        Tue, 03 Feb 2026 17:33:07 -0800 (PST)
X-Received: by 2002:a05:620a:372a:b0:84a:d3ce:c749 with SMTP id af79cd13be357-8ca2f9c07d6mr213456285a.64.1770168786610;
        Tue, 03 Feb 2026 17:33:06 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e3881b307sm263804e87.50.2026.02.03.17.33.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Feb 2026 17:33:05 -0800 (PST)
Date: Wed, 4 Feb 2026 03:33:03 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Stephen Boyd <swboyd@chromium.org>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        J =?utf-8?Q?=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>,
        Pin-yen Lin <treapking@chromium.org>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v5 4/4] arm64: dts: qcom: lemans-evk: Enable secondary
 USB controller in host mode
Message-ID: <fycr33dqcosay7ake3nbbeaclhqvynwzixas4u3ocaerpqbu5e@shoibdd663vm>
References: <20260122092852.887624-1-swati.agarwal@oss.qualcomm.com>
 <20260122092852.887624-5-swati.agarwal@oss.qualcomm.com>
 <63fjxtcmpbpna4cuuis332y3p52b6pvh43gyg6m7u5kiwkb2pb@znwfyet4xlpc>
 <CAHz4bYuR_LZXh=tS2FJ4VE9tVB6vN10pd-9i=uOL35sSx_BRzg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHz4bYuR_LZXh=tS2FJ4VE9tVB6vN10pd-9i=uOL35sSx_BRzg@mail.gmail.com>
X-Proofpoint-GUID: qQE4NYwcKAza4ZSCXLGzsQlgQOcns2rm
X-Proofpoint-ORIG-GUID: qQE4NYwcKAza4ZSCXLGzsQlgQOcns2rm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjA0MDAwOCBTYWx0ZWRfX1cdJMvLGT08u
 m2wn15F5RCrs8Kki8YWlm9RUnvqR3N+oCsRBFP8zDSru3mMPyKtS+e2uJ/8CRfSNsCOc0VSjtau
 VrQtTWBc4vAcf24Bj/3waeUppdriEIwPb8GLubNmzk5MVhAnsZctCm3HrwUALmdTchrbF9u0zq8
 JGaJ5GJaeMnGkmnNlnf8OMtIzscK2g45e1QPwj/HtTIDC9UFizgeh9idBEfKJiiAp0G/69E2z+Q
 jLGQpcR+YABPl8K9CL7ZuPd+ZlSUURPKm4PbCDh6r1AwP2PV+dY6CQhp/2IftNqzZNHFBnu1wVw
 9WmJx7FPNp74xv1tjSiQiWTFpPEcBhUWNiC1gj8MguSjEXOahHoML77/On6qwQ7Qp1tGGHw5/Vr
 Nu8bCejfDzwuWYQDyn5PmtFnFqqgtcFMYCN1bflWg1fyPfA1HUIPYqTuP2YwhFIEG5l99KO06nv
 xwLvgKQpUBHh+cl6FpA==
X-Authority-Analysis: v=2.4 cv=doTWylg4 c=1 sm=1 tr=0 ts=6982a1d3 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=rCqLFm6cVfeqKcP3PTwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-03_07,2026-02-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 impostorscore=0 suspectscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602040008
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-262452-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,0.0.0.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.47:email,0.0.0.2:email,0.0.0.1:email];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-0.999];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: E0CAEE073B
X-Rspamd-Action: no action

On Tue, Jan 27, 2026 at 10:53:46AM +0530, Swati Agarwal wrote:
> On Thu, Jan 22, 2026 at 4:02 PM Dmitry Baryshkov
> <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >
> > On Thu, Jan 22, 2026 at 02:58:52PM +0530, Swati Agarwal wrote:
> > > Enable secondary USB controller in host mode on lemans EVK Platform.
> > >
> > > Secondary USB controller is connected to a Genesys Logic USB HUB GL3590
> > > having 4 ports. The ports of hub that are present on lemans EVK standalone
> > > board are used as follows:-
> > > 1) port-1 is connected to HD3SS3220 Type-C port controller.
> > > 2) port-4 is used for the M.2 E key on corekit. Standard core kit uses UART
> > > for Bluetooth. This port is to be used only if user optionally replaces the
> > > WiFi card with the NFA765 chip which uses USB for Bluetooth.
> > >
> > > Remaining 2 ports will become functional when the interface plus mezzanine
> > > board is stacked on top of corekit:
> > >
> > > 3) port-2 is connected to another hub which is present on the mezz through
> > > which 4 type-A ports are connected.
> > > 4) port-3 is used for the M.2 B key for a 5G card when the mezz is
> > > connected.
> > >
> > > Mark the second USB controller as host only capable and add the HD3SS3220
> > > Type-C port controller along with Type-c connector for controlling vbus
> > > supply.
> > >
> > > Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> > > ---
> > >  arch/arm64/boot/dts/qcom/lemans-evk.dts | 208 ++++++++++++++++++++++++
> > >  1 file changed, 208 insertions(+)
> > >
> > > diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > > index 074a1edd0334..a549f7fe53a1 100644
> > > --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > > +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> > > @@ -68,6 +68,45 @@ usb0_con_ss_ep: endpoint {
> > >               };
> > >       };
> > >
> > > +     connector-1 {
> > > +             compatible = "usb-c-connector";
> > > +             label = "USB1-Type-C";
> > > +             data-role = "host";
> > > +             power-role = "source";
> > > +
> > > +             vbus-supply = <&vbus_supply_regulator_1>;
> > > +
> > > +             ports {
> > > +                     #address-cells = <1>;
> > > +                     #size-cells = <0>;
> > > +
> > > +                     port@0 {
> > > +                             reg = <0>;
> > > +
> > > +                             usb1_con_ss_ep: endpoint {
> >
> > This contradicts USB-C connector bindings. Why?
> >
> > > +                                     remote-endpoint = <&hd3ss3220_1_in_ep>;
> > > +                             };
> > > +                     };
> > > +
> > > +                     port@1 {
> > > +                             reg = <1>;
> > > +
> > > +                             usb1_hs_in: endpoint {
> > > +                                     remote-endpoint = <&usb_hub_2_1>;
> > > +                             };
> > > +
> > > +                     };
> > > +
> > > +                     port@2 {
> > > +                             reg = <2>;
> > > +
> > > +                             usb1_ss_in: endpoint {
> >
> > port@2 is for the SBU signals. It can't be connected to the hub.
> >
> > > +                                     remote-endpoint = <&usb_hub_3_1>;
> > > +                             };
> > > +                     };
> > > +             };
> > > +     };
> > > +
> > >       edp0-connector {
> > >               compatible = "dp-connector";
> > >               label = "EDP0";
> > > @@ -141,6 +180,16 @@ vbus_supply_regulator_0: regulator-vbus-supply-0 {
> > >               enable-active-high;
> > >       };
> > >
> > > +     vbus_supply_regulator_1: regulator-vbus-supply-1 {
> > > +             compatible = "regulator-fixed";
> > > +             regulator-name = "vbus_supply_1";
> > > +             gpio = <&expander1 3 GPIO_ACTIVE_HIGH>;
> > > +             regulator-min-microvolt = <5000000>;
> > > +             regulator-max-microvolt = <5000000>;
> > > +             regulator-boot-on;
> > > +             enable-active-high;
> > > +     };
> > > +
> > >       vmmc_sdc: regulator-vmmc-sdc {
> > >               compatible = "regulator-fixed";
> > >
> > > @@ -536,6 +585,39 @@ hd3ss3220_0_out_ep: endpoint {
> > >                       };
> > >               };
> > >       };
> > > +
> > > +     usb-typec@47 {
> > > +             compatible = "ti,hd3ss3220";
> > > +             reg = <0x47>;
> > > +
> > > +             interrupts-extended = <&pmm8654au_2_gpios 6 IRQ_TYPE_EDGE_FALLING>;
> > > +
> > > +             id-gpios = <&tlmm 51 GPIO_ACTIVE_HIGH>;
> > > +
> > > +             pinctrl-0 = <&usb1_id>, <&usb1_intr>;
> > > +             pinctrl-names = "default";
> > > +
> > > +             ports {
> > > +                     #address-cells = <1>;
> > > +                     #size-cells = <0>;
> > > +
> > > +                     port@0 {
> > > +                             reg = <0>;
> > > +
> > > +                             hd3ss3220_1_in_ep: endpoint {
> > > +                                     remote-endpoint = <&usb1_con_ss_ep>;
> > > +                             };
> > > +                     };
> > > +
> > > +                     port@1 {
> > > +                             reg = <1>;
> > > +
> > > +                             hd3ss3220_1_out_ep: endpoint {
> > > +                             };
> >
> > Why is this port disconnected? It it really N/C?
> 
> Hi Dmitry,
> 
> Sorry for the confusion, Can we do it as follows:
> 
> hub:                    Hd3ss3220   typec-connector
> 
> usb_hub_2_1 <-> port@1       port@1 <-> empty
> usb_hub_3_1 <-> port@2       port@2 <-> <empty>
>                              port@0 <-> port@0
> 

You still missed the _why_. Why port@1 of HD3SS3220 is not connected?

-- 
With best wishes
Dmitry

