Return-Path: <devicetree+bounces-266214-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sMwuCbyYlGkoFwIAu9opvQ
	(envelope-from <devicetree+bounces-266214-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 17:35:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DFCD14E424
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 17:35:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F0305301E6CD
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 16:35:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0045436EAAE;
	Tue, 17 Feb 2026 16:35:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ntyiyq00";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jv0U0c7v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99E2536EA82
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 16:35:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=205.220.180.131
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771346104; cv=pass; b=q51ArrorCjppRuqG7YxC2MAVfIwMvuAtpYE2rlvdN6gsv8vi1/yBlheFKjlMtpkL7Cxn8n1j4NXOrOJLXGVhowMQ12MokGywtMjW9jSb5Tv3lZ7CYbxHHVqxtIKwMgznOR4z8nnVPo/cIms9WP/6XHgY0aBpEdWUtrqj+RABqFU=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771346104; c=relaxed/simple;
	bh=fOduQHfnOBnWN0eyuIDOU1ydKPk/q90IXpg/RDM1QR0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ewFGa+23wVaIxc+zoqhco9r9rdHsjYx9EPf1cGP3nHkwFboxRq3apwnLuDTpjXCPKzEYAyvtfeyDxUsjshzhUbr0ZmSmRwHTzXt5D/RoqdSK1+q22xAupvEkAa0noYF0ayzcG4lBjy+lNxzayDLRccwQzokoQ+JuqaWZQm7pBas=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ntyiyq00; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jv0U0c7v; arc=pass smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61HFU9Xv2319712
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 16:35:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	PMRely7AErEzRnlh5Io/kCgcffqQUskngQe8L7efOeo=; b=Ntyiyq00RWaM+fc/
	TUC9DbjyNOs9Japaw2XM8AzuljQaLriO0RaRNhzZ+M3n9GsPJAarbHbNpp6/PEET
	gseZBFEhAk9PFvKbcuqIyVLHbWpwFEMFeIDirSc1YSbOfN/yqyinzYH9i+VfCdBg
	kDFlAw9zf/CAG7A/WEcdtMn15P6upTitTGeFiniShyJXTSG7O3j8MyA8aIcKzfAr
	Q+7Tn0Vt/pa3U6/q99jGevTHoj3vd8AP+ffcTFEdEK8hI/K7CbzPj0WWTsiqxGVx
	UA8XNebusAFfwhYn8V64fiLlKGkejzO6A3SOPbVqMXcxcDe4mkWA+RlmB/lg5Dya
	DtxXDQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ccu1er79m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 16:35:02 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50335bd75bdso386482161cf.0
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 08:35:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1771346102; cv=none;
        d=google.com; s=arc-20240605;
        b=cvgpAVrOYCxLZvxfjlX+PjGU6S5euz61RjE7nz3HJIu3HUZSfNhzySqC91luLcyLpG
         LpRdnPE1k9fVJoTFvrlNbFGmeKPWjoKEp5WVCAoyQspSAjUTe8ddmhTJNx89SpwpqKvB
         JEiihQ2LACc60ZU/N9jyE31R8lF1WN92klXdHuML1n6gpfzV1hzbbjRdVvVeb2a44S6U
         qKqrKcEBZ0/jh7vKCcokFuxOxiBTe7lEPZfHljjwe8kNtYZh2KMy8c5hdKNTSHc4pFdf
         SNITw9eYRtBWdqQbqyqguWH8lYXsgubWaVfigHi2ggW5jyzXoQe+UikQXltBRrS9ryBr
         F3jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=PMRely7AErEzRnlh5Io/kCgcffqQUskngQe8L7efOeo=;
        fh=QsporHlY8EVaegYvaMnUNxiuQhM1TJavBewGMnwpE9w=;
        b=FYNrX5xrSpOL7ojGkHAxunKjK9mY43A7wz+lkqvTtNpM//55jCh3JmRa7xaJGJgtXi
         X8DCWOVzDj2bI+BqE4MenkPrIBag0Z0pQE16GvvC2LmroY5Wt0A3gm7hgLCVvVzpzoP9
         F5n1RrUrJWpBHMRnLnWzO3ZtSTMjP9XA1njZNiRBkr4+l+giwRxXjiTDNoDZB8uzC7PN
         QF7g/YWNcEgyttTdM8EG0oPvspHXfB7cq3HP2KsoPxkrrIqFSQqGwrbGFznr1Gc35Iph
         WBUNF3oAMZX60stRYs00R920ThV4LuKylxGJ33S0z7iDu/j2rdW91MrG3KAFaRhXSR4I
         K2dg==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771346102; x=1771950902; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PMRely7AErEzRnlh5Io/kCgcffqQUskngQe8L7efOeo=;
        b=jv0U0c7v3kBIS3xZr/Fpl9OHCwiHk/0345qjt9aqm5ImZAY+H6kNo8/aoYApoGV3Sx
         wRoJgSgBqmUyWV7zebznE3oeD/NvddnlppUWlAVQOGG+WF1B3M2BQNZA2lHKBn4E4+3T
         Lv0pIGEEJpdd3OzN6R9aUgoXrQa+Iw/O6/KN9boZ6x8tQET5Un0zmqRSdAjQFbLHZohI
         bmaaYgRBigGMLnNqT6BYZ2XLHnP8rEmd54wy24Ey7LjfxiemKs+i2VvjPAJUYIL+Aqfh
         0KjJaEezQEqLTyZyiEGFJAdGkATWcPIoFpj/sbO0JI0/Tca7yrqbjPrO2VyEtBxyTIJL
         05qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771346102; x=1771950902;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PMRely7AErEzRnlh5Io/kCgcffqQUskngQe8L7efOeo=;
        b=FGdKK71aBZnvomoX9fuCvHgCb+EHxGwcCvOVdvx4FCls2B6BbrLwCt5xXueahQEU7y
         f+4EXWvdYOCm+5r+YQHWt5imgjjnB/nbyk3nSSc4vxLV9WV8oxpctV6g5CKfyQfh7SOp
         0EUOtwExQL/1hwwKDFNmued2VfcuEMfdX2f/gHlYet9or+gvMtjE2Pxr7qOIn+X49XDN
         IMgaNpmRyMJXPzCDjHgLl1iZF60IWtQdH0r28X/1w7FEmwOarXMwjPk/4j+AoqbaMsNp
         Fv68jI3S64+Fy/DHrN3fCs2Uc9z00bUuoQZA9ZVxod9C2Y2+0B/G4pnoHudZR3M/12nA
         Ig7A==
X-Forwarded-Encrypted: i=1; AJvYcCVp8KmExmcmvzdN/VxVukwL+X0ZGqjAx2IT90XI9ks85mx89g1ka3d5zm9obbvpbPUGsmxP0tedkmIt@vger.kernel.org
X-Gm-Message-State: AOJu0YypNaC74fS8QQz36FQE4v0YukRpYW4n+AxutssurdRIqQVjkfZ4
	/453K7Dl6AGEBpHPPFaD2jlWXYQosYHo7JDpn5uGQmhd/PR8Yf0f8Kt37Mm+6jhQNYoGGQJe3OH
	PXCg9Ofdztn4S7uC5lpEmoNfiB3OGVxuXsrc+KG7UeZTTEbCsPHNoOnRo2LVSJPgIgYXV3yBydN
	wNwgs7aI10bPq1AU9tsNgtLn1GgXen9p7DpnXKJMY=
X-Gm-Gg: AZuq6aJzAZ5rla7oENdf2vDNVDsJq+O/HXjP8Too5pOM7DzMt8bSbsn6q/wu1srkkf4
	/KUXGubClx4HBzm+L67kcVeIFtvVU4JZvL86k3+OXGiZdWLrYAkocQZJC7DAylk7fNaZGg/rFx3
	lcMTKPOfyXz516KsC8ZTVhdYkvj1z5rvWe8bmbgB2kgakG+dNV4ZBD6DPzdou+r6/kB4c2CY2Tk
	9tBnyOo4+ke3SBneTTMUurWR3kY3uqTSqJ6n23C
X-Received: by 2002:a05:622a:19a0:b0:502:f07e:8569 with SMTP id d75a77b69052e-506b3fbdae1mr151322771cf.35.1771346101982;
        Tue, 17 Feb 2026 08:35:01 -0800 (PST)
X-Received: by 2002:a05:622a:19a0:b0:502:f07e:8569 with SMTP id
 d75a77b69052e-506b3fbdae1mr151322301cf.35.1771346101540; Tue, 17 Feb 2026
 08:35:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260213132058.521474-1-quic_nihalkum@quicinc.com> <20260213132058.521474-2-quic_nihalkum@quicinc.com>
In-Reply-To: <20260213132058.521474-2-quic_nihalkum@quicinc.com>
From: Loic Poulain <loic.poulain@oss.qualcomm.com>
Date: Tue, 17 Feb 2026 17:34:50 +0100
X-Gm-Features: AaiRm52Qb0GupIhPu3JDqFomu65fscXc6lKfjuE2PWBiawURp4h1BFYQGueyox8
Message-ID: <CAFEp6-2N21rzNADxPyaLTO4N0vWAoKU13oQueRsC9Esrw-BKOg@mail.gmail.com>
Subject: Re: [PATCH v10 1/5] dt-bindings: i2c: qcom-cci: Document qcs8300 compatible
To: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
Cc: bryan.odonoghue@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        hverkuil-cisco@xs4all.nl, rfoss@kernel.org, andi.shyti@kernel.org,
        linux-i2c@vger.kernel.org, cros-qcom-dts-watchers@chromium.org,
        quic_svankada@quicinc.com, quic_vikramsa@quicinc.com,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Authority-Analysis: v=2.4 cv=LfsxKzfi c=1 sm=1 tr=0 ts=699498b6 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10
 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22
 a=GgsMoib0sEa3-_RKJdDe:22 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=SK6ENzGRsuaxshVCMHcA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: wUDnT9-SZrFraN4LCw-nLqMndT8T5laH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjE3MDEzNCBTYWx0ZWRfX0kg/sVUoJVuE
 KupG+qotuxraE91QKk0F89jDv+U0RI6Hw+uwURaBMljHDKNFi4dBzHD+l05ukJWrjf+Ohn0295p
 7aumgkOJ19TY0I6MqfZ/i68FvEF/M3JJtxgzW+mV/2P1dHnCtsq+sX19D5uDANnx2SAKtsNTXHc
 cAKRaMP2VZJ396ZRpozMc4Vp5A8Kic3earwXYqNYrQ1ZtZOYke9W1Z9ho7yKMyCbWCujyAKONwx
 /31jMd8rILc8H/J8lyyBZueKj6IO66qC3+Jrtg6068jaLOFROaKquQg5j4CG9Pwn5i7fN89kB/j
 NmOfkoWy5lP32kYm4ZoFHvRQffjjyAoLneM/scHxhRyCgJ3hJJVSz3eBJzn+Rc7fyF9ycuIxtgL
 t9BAcZE7UiejaqvcC5kNjn4nRtGuz45O5RZxGzZrX17qmNOBe0cn83s/DXF4iV3nqKQ1O5XdiNP
 TARSlvX9eAuHrMrsgPQ==
X-Proofpoint-ORIG-GUID: wUDnT9-SZrFraN4LCw-nLqMndT8T5laH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-17_02,2026-02-16_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 clxscore=1015 spamscore=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 phishscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2602170134
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-266214-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[linaro.org,kernel.org,xs4all.nl,vger.kernel.org,chromium.org,quicinc.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[loic.poulain@oss.qualcomm.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,mail.gmail.com:mid,qualcomm.com:email,qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,quicinc.com:email]
X-Rspamd-Queue-Id: 6DFCD14E424
X-Rspamd-Action: no action

On Fri, Feb 13, 2026 at 2:21=E2=80=AFPM Nihal Kumar Gupta
<quic_nihalkum@quicinc.com> wrote:
>
> The three instances of CCI found on the QCS8300 are functionally the same
> as on a number of existing Qualcomm SoCs.
>
> Introduce a new SoC-specific compatible string "qcom,qcs8300-cci" with a
> common fallback.
>
> Signed-off-by: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

Reviewed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>


> ---
>  Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Do=
cumentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> index a3fe1eea6aec..399a09409e07 100644
> --- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> +++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
> @@ -28,6 +28,7 @@ properties:
>            - enum:
>                - qcom,kaanapali-cci
>                - qcom,qcm2290-cci
> +              - qcom,qcs8300-cci
>                - qcom,sa8775p-cci
>                - qcom,sc7280-cci
>                - qcom,sc8280xp-cci
> @@ -133,6 +134,7 @@ allOf:
>              enum:
>                - qcom,kaanapali-cci
>                - qcom,qcm2290-cci
> +              - qcom,qcs8300-cci
>                - qcom,sm8750-cci
>      then:
>        properties:
> --
> 2.34.1
>

