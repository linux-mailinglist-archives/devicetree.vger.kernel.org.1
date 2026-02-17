Return-Path: <devicetree+bounces-266138-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qDWyKa5nlGlFDgIAu9opvQ
	(envelope-from <devicetree+bounces-266138-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:05:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF6C414C572
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 14:05:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A932D301022E
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 13:01:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A96023112C9;
	Tue, 17 Feb 2026 13:01:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J7iZgtE2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NWZ7jh5r"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CADC30C62E
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:01:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771333312; cv=none; b=cWWOgt0ZAVgbWmPJXPZ3De+/H4uuoJznBtVSnEOjOExDcA/SbHeyCFlcROJszC0YQo3MYWrDqD8Cd873hp3PPetCZlIdijFEO0on0Rj3xhNjqsxoMP4xJgbq7DLmPIrY26FJ/e95eDxdY+9N0A11kngODoGpoX7mUAyDGhzrtXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771333312; c=relaxed/simple;
	bh=7dSQFmKwzJX/TICmtGeNRIBsnFI93g49Lw5UlHIdUYs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cLNykIOhmSz6oRCv0rE+rA6FK+V1/64s2lJhf1iEQxQJNQQMVGzO+kULMKBD9kQH6SlI8QjOmfSPpV4v76XTPCfiasiVxSOotnfNBScAuP64YAfp4dlP0fTQYAR93lLatNz/3KYFAqazbLJF0VhNU31Udkae3ePue67i+SbDzP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J7iZgtE2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NWZ7jh5r; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61H93XdN287946
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:01:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vd40U9UoMKaKOyH5ofv9FCYx
	5wx4j3wNJzQNQh0zjMU=; b=J7iZgtE2ZpPCTWhx4t8pBkb+a7TfdDBdSR+MhxqP
	gwQ/n+okZ1Svkspt9SgqyCsFjO5qRg1uVEL0tMP2bNTnXw1gitGivu6JC3MlcxD9
	ROeQfjnQqBNxcpYH+rcqX8pauHOl6qvepBnF7RNkRwLgnKelBetSRzE95eB551lG
	VQ1tb6osY+4WoBEchWYFdOMrZtBJDDPYvIwqHf4fvBfXwvYAHF4s87dHsO1skdmP
	PiMin1c9TK59Qql9QFzpYyt51lx1YNc6ejVnRMPBc9QdAFzKtjo9Z+nL55+e0FOX
	0LSel3MoTXNFe1yG/5Cb3+pPipXw8Vrsz7AOtprJpoPOyQ==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cc6nrtd0n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 13:01:50 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-948357563a1so7741952241.1
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 05:01:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771333310; x=1771938110; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vd40U9UoMKaKOyH5ofv9FCYx5wx4j3wNJzQNQh0zjMU=;
        b=NWZ7jh5r5F2WuhI0L5HuhYFyJPtd3xWd4bU9RVzN+Hiv5nXeRymKJ3/HUfWYSL4q6i
         WR56/UMQvQmzewsVI2MYeS5IS+F2Z20DxNFkdQd5zEcPyZfNBGqVw/YPCPLUrGyAqzGm
         e9OD2adKYmO4oJRtMNsux8ea8wWLxmvn3rmUZQZEg4oWMdlctQ4wGYw1NIrIkfHlGoed
         yRmzgbUxDuCIkJQOiwos7DYyk3qfJTGByeRd8Y/Qnf/yx7DqthsjLPwZJP2awTzmPR20
         Ej3ApxfofwCPzHNcOZQfTDO7cAvi6BOo3MRWdZBQVwL8gjDBklCLzEuFLnO9TK8jO3A4
         z/yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771333310; x=1771938110;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vd40U9UoMKaKOyH5ofv9FCYx5wx4j3wNJzQNQh0zjMU=;
        b=b/OgZEP1JcRQGXH2nK6AooK7OmcjscfLgpEdg4fUPtsrQ4DQrk1z9os6E/acGy1BFh
         4BmX19AiNHxd+F0kWuTONbD5bfN2LIdp50tFsaPtj+d3pfGmeh6y0JfNrEpkX3qIYHan
         7eBe/jZoaoWBAK41Bbm60aeW55auBdRafbVALQomf7BfCyRMThXNMYWwXa4b4HzQBDr9
         kcchZBXVDlSkhsrj5EIRHDWfCRyI1GWfVi1RZv6SE9jS0xMde4MoIKLfdzdNWDobsbVq
         yFFFRpG8Cu9QgiM6vTlRj5CmzJThQe/nvBQlxrmwPQS2dYYn7DMnc7p1+STRkhlYbrzq
         qDuw==
X-Forwarded-Encrypted: i=1; AJvYcCV+SNoAaykUwt6Vw8OxZ7YvOvoPLl6EHXIaIE2FlXq3iPFY+uzC0aa+ezzzglWnJdaTtTA2Rk8qoRI8@vger.kernel.org
X-Gm-Message-State: AOJu0YyU8tUlhVzZe0pgXCbW1xcZK1V0dVXiQ8qNltnrF9HndPcWgUox
	EWFesRWCW4BgXygKVcmMhCzVZfng6lBhhKRCkJer9crrAEwBP+aoQBs4jT8X0KB80nzV50LgWfw
	eYphyn7PU2OczdXJRcZcaB9yD7fZNSZbIKV12j8tt2hG+jnnpfE+Bo6a7eob2zjJr
X-Gm-Gg: AZuq6aK+KaLzwcsGk2lj3gOk+NX1IThR8Wf3BNMGPjdL2KmG5mVUB7IMfqgaUGd4mP5
	7fnIrFd2N2p6nk/J/qib2jvAK3XUB3LAhbLIaCgivWU9LEUv7gJMVGBeaREbB0121bxo2xJgE4I
	PbxBYVGPLAPWoqlm8dpNm1TwJzXtfEJi7HIv8OYL/0nfcNISVDfXeEc23MBEpUxnFe1Ji5Y2OAp
	IVOqpJGwhMHj3d8m8KqOPLwo1GAWnqdkKIbcQDqAP2p/QjS7ZZgxio+arhnUGkP6U+gM59yVrKx
	8jhYoj3dXGuqOgYnNuw+PdkMnbTdMS/Mc5GuLIC4oivfej9a9VekuEWoWMUFWCRCf801sKHc2fu
	b8aBztv/bAvqa1dSk6F+5PR3UJS01Qi7/31wegck6zGwAfoA1/SZQ3kTTKjdzxoU86vWBuIfv8u
	CrSpB9qpM3Osfoho2Qb+n1JKkBdU1uU0cNZtE=
X-Received: by 2002:a05:6102:ccf:b0:5f9:3a74:e17b with SMTP id ada2fe7eead31-5fe1ad01e29mr4127361137.13.1771333304654;
        Tue, 17 Feb 2026 05:01:44 -0800 (PST)
X-Received: by 2002:a05:6102:ccf:b0:5f9:3a74:e17b with SMTP id ada2fe7eead31-5fe1ad01e29mr4127293137.13.1771333304043;
        Tue, 17 Feb 2026 05:01:44 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3870689259dsm33693401fa.2.2026.02.17.05.01.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 05:01:43 -0800 (PST)
Date: Tue, 17 Feb 2026 15:01:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>, quic_mohamull@quicinc.com,
        quic_hbandi@quicinc.com, janaki.thota@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] Bluetooth: qca: add QCC2072 support
Message-ID: <3v3iz5cxsbaoevcfkk7itutdepfuagxoemixgfhewdevmju2ut@rcg3zuyg4gzn>
References: <20260217054731.3058567-1-vivek.sahu@oss.qualcomm.com>
 <20260217054731.3058567-3-vivek.sahu@oss.qualcomm.com>
 <mt4vrzmq7caqddwtz7nc3tn33zxh7uupoxfmk5pfqobhuex43f@se64qz7qvuh6>
 <19d3cced-f630-4a6b-853e-3798487fd769@oss.qualcomm.com>
 <20260217-mighty-organic-oxpecker-2ed848@quoll>
 <cdbef8d2-df96-4a41-98eb-3acc747a0aaf@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cdbef8d2-df96-4a41-98eb-3acc747a0aaf@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=XKo9iAhE c=1 sm=1 tr=0 ts=699466be cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22 a=NK7YlZMuulUfQlmKRgAA:9
 a=CjuIK1q_8ugA:10 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDEwNiBTYWx0ZWRfX9P0S7XMWyHT4
 jhyQ0zVzt0hMzbDmv3Slyab7Bgw21sjF9KwUOPWLUOV/TmpZwrglKb/i0RQ1q2C1SN8OO9xqxuj
 90L5FY1oD2KZ9DnheK/O+6lPmGVMBSZLzBiPdPWBiFHhr25N9HfUuBNLstE7fWV/dmg79YSwaUo
 LbSoKVntRgFwv02dbHMLH+bxIj9N2bV742zLPdtkFeR5jCu+hnFnrvjTMAesEtjpIB/fv1vZFac
 QlYR+FlNBJ9+12oSW6BupmviaF772stULrlxx2ogdC1QU/z2NONIH1deQI7nMpQw5R1DmOafxsO
 1NBKMMhZ8nISbN7Zj2302cm4qs7LOArxZP8aQ80VEU/fvz3Xmh/iznPVwSSPgudsjNV3r6A7YH7
 SZ1VMJQXdE1PnSYLGMpe7yFByrn9wGQg3xlDF2cfkLzdQr855qqhmfkGW2h/Ys0YtgIUOjdveds
 QSIyLL3t3jS3Gj+Iejw==
X-Proofpoint-ORIG-GUID: Hpo2o_iqZ5YDJU7ZA1AzCLoFDyZ8gCGp
X-Proofpoint-GUID: Hpo2o_iqZ5YDJU7ZA1AzCLoFDyZ8gCGp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_01,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 clxscore=1015 adultscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602170106
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-266138-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[kernel.org,holtmann.org,gmail.com,quicinc.com,oss.qualcomm.com,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:dkim,qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: EF6C414C572
X-Rspamd-Action: no action

On Tue, Feb 17, 2026 at 06:21:19PM +0530, Vivek Sahu wrote:
> 
> 
> On 2/17/2026 1:23 PM, Krzysztof Kozlowski wrote:
> > On Tue, Feb 17, 2026 at 01:17:29PM +0530, Vivek Sahu wrote:
> > > > > +		case QCA_QCC2072:
> > > > > +			snprintf(config.fwname, sizeof(config.fwname),
> > > > > +				 "qca/ornnv%02x.bin", rom_ver);
> > > > > +			break;
> > > > >    		case QCA_WCN3950:
> > > > >    			if (le32_to_cpu(ver.soc_id) == QCA_WCN3950_SOC_ID_T)
> > > > >    				variant = "t";
> > > > > diff --git a/drivers/bluetooth/btqca.h b/drivers/bluetooth/btqca.h
> > > > > index 8f3c1b1c77b3..a175ac31e7b2 100644
> > > > > --- a/drivers/bluetooth/btqca.h
> > > > > +++ b/drivers/bluetooth/btqca.h
> > > > > @@ -158,6 +158,7 @@ enum qca_btsoc_type {
> > > > >    	QCA_WCN6750,
> > > > >    	QCA_WCN6855,
> > > > >    	QCA_WCN7850,
> > > > > +	QCA_QCC2072,
> > > > 
> > > > Why not keep it sorted?
> > > > 
> > > As mentioned in the cover letter "qca_btsoc_type" enum in
> > > drivers/bluetooth/btqca.h contains all the soc type which need to be enabled
> > > for BT enablement on the target device. There are few places where logic of
> > > framing packets transferring between SoC  and Host depends on the which
> > > generation of the chip it is, refer api "qca_read_soc_version". So It is not
> > > sorted in btqca.h file.
> > 
> > Neither in previous patch comments nor here you respond to actual
> > comment. You just write something completely irrelevant.
> > 
> > I don't think any of this should be considered if you are not
> > responding to actual comments.
> > 
> > 
> > Best regards,
> > Krzysztof
> > 
> There is high impact on the existing design if i make this enum sorted. We

What kind of "high impact"?

> are considering your comments regarding sorting for next commit not for this
> commit. Can we have approval for this commit if all other changes looks
> fine.


No.

-- 
With best wishes
Dmitry

